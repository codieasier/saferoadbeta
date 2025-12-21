import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // مفاتيح ووحدات التحكم اللازمة لوظائف النموذج
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _birthDateController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  bool _agreedToTerms = false; // حالة مربع التأكيد

  @override
  void dispose() {
    _usernameController.dispose();
    _cityController.dispose();
    _birthDateController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  // === الدوال المساعدة (مطابقة لتصميم SignIn) ===

  Widget _buildLabel(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, top: 18.0),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white70,
          fontSize: 15,
          fontFamily: 'Tajawal',
        ),
        textAlign: TextAlign.right,
      ),
    );
  }

  // دالة بناء TextFormField بتصميم شفّاف
  Widget _buildTextFormField({
    required TextEditingController controller,
    required String hintText,
    required IconData icon,
    bool obscureText = false,
    TextInputType keyboardType = TextInputType.text,
    String? Function(String?)? validator,
    bool readOnly = false, // لإضافة حقل التاريخ
  }) {
    return TextFormField(
      controller: controller,
      readOnly: readOnly,
      obscureText: obscureText,
      keyboardType: keyboardType,
      style: const TextStyle(color: Colors.white, fontSize: 16),
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white54.withOpacity(0.7), fontSize: 15),
        filled: true,
        fillColor: Colors.white.withOpacity(0.1), // الخلفية الشفافة

        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Icon(icon, color: Colors.white54.withOpacity(0.7), size: 20),
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(color: Color(0xFFFBBF24), width: 1.0),
        ),
        errorStyle: const TextStyle(fontFamily: 'Tajawal', color: Color(0xFFFBBF24), fontSize: 12),
        contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
      ),
      onTap: readOnly ? () => _selectDate(context) : null, // استدعاء منتقي التاريخ
    );
  }

  // دالة منتقي التاريخ
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(2007, 1, 1),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            colorScheme: ColorScheme.dark(
              primary: const Color(0xFFFBBF24), // لون التحديد
              onPrimary: const Color(0xFF1E293B), // لون النص على التحديد
              surface: const Color(0xFF334155), // خلفية التقويم
              onSurface: Colors.white,
            ),
            dialogBackgroundColor: const Color(0xFF1E293B),
          ),
          child: child!,
        );
      },
    );
    if (picked != null) {
      setState(() {
        _birthDateController.text = "${picked.year}/${picked.month}/${picked.day}";
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    const double topSpacing = 120.0;

    return Scaffold(
      backgroundColor: const Color(0xFF0F172B),
      body: SafeArea(
        child: Column( // نستخدم هيكل الـ Column الأصلي
          children: [
            // المسافة العلوية والعنوان
            SizedBox(height: topSpacing / 3),
            const Text(
              'إنشاء حساب جديد',
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'Tajawal', fontSize: 26, fontWeight: FontWeight.w900, color: Colors.white),
            ),
            SizedBox(height: topSpacing / 3),

            // البطاقة (Container) الممتدة
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),

                // الديكور (مطابق للـ SignIn)
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(70),
                        topRight: Radius.circular(70)
                    ),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          const Color(0xFF334155),
                          const Color(0xFF334155),
                          const Color(0xFF506685),
                          const Color(0xFF6A7B94)
                        ]
                    ),
                    boxShadow: [
                      BoxShadow(color: const Color(0xFFFBBF24).withAlpha(60), blurRadius: 30, spreadRadius: 5.0)
                    ]
                ),

                child: SingleChildScrollView( // لضمان التمرير بسبب كثرة الحقول
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [

                        // 1. حقل اسم المستخدم
                        _buildLabel('اسم المستخدم'),
                        _buildTextFormField(
                          controller: _usernameController,
                          hintText: 'أحمد علي',
                          icon: Icons.person_outline,
                          validator: (value) => (value == null || value.isEmpty) ? 'الرجاء إدخال اسم المستخدم' : null,
                        ),

                        // 2. حقل المدينة
                        _buildLabel('المدينة'),
                        _buildTextFormField(
                          controller: _cityController,
                          hintText: 'المدينة',
                          icon: Icons.location_on_outlined,
                          validator: (value) => (value == null || value.isEmpty) ? 'الرجاء إدخال المدينة' : null,
                        ),

                        // 3. حقل تاريخ الميلاد
                        _buildLabel('تاريخ الميلاد'),
                        _buildTextFormField(
                          controller: _birthDateController,
                          hintText: '2007/01/01',
                          icon: Icons.lock_outline, // رمز القفل كما في الصورة
                          readOnly: true, // لمنع الكتابة اليدوية وفتح منتقي التاريخ
                          validator: (value) => (value == null || value.isEmpty) ? 'الرجاء اختيار تاريخ الميلاد' : null,
                        ),

                        // 4. حقل كلمة المرور
                        _buildLabel('كلمة المرور'),
                        _buildTextFormField(
                          controller: _passwordController,
                          hintText: 'اختر كلمة مرور تحتوي على أرقام ورموز',
                          icon: Icons.lock_outline,
                          obscureText: true,
                          validator: (value) => (value == null || value.length < 8) ? 'يجب أن تكون كلمة المرور 8 أحرف على الأقل' : null,
                        ),

                        // 5. حقل إعادة كتابة كلمة المرور
                        _buildLabel('أعد كتابة كلمة المرور'),
                        _buildTextFormField(
                          controller: _confirmPasswordController,
                          hintText: 'أعد كتابة كلمة المرور ذاتها',
                          icon: Icons.lock_outline,
                          obscureText: true,
                          validator: (value) {
                            if (value != _passwordController.text) {
                              return 'كلمتا المرور غير متطابقتين';
                            }
                            return null;
                          },
                        ),

                        const SizedBox(height: 30),

                        // 6. مربع التأكيد والـ Checkbox
                        Row(
                          children: [
                            Checkbox(
                              value: _agreedToTerms,
                              onChanged: (bool? newValue) {
                                setState(() {
                                  _agreedToTerms = newValue!;
                                });
                              },
                              activeColor: const Color(0xFFFBBF24), // لون التأكيد الأصفر
                              checkColor: const Color(0xFF1E293B),
                            ),
                            Expanded( // نستخدم Expanded لتجنب الـ Overflow مع النص الطويل
                              child: RichText(
                                textDirection: TextDirection.rtl, // لضمان اتجاه النص العربي الصحيح
                                text: const TextSpan(
                                  style: TextStyle(fontSize: 13, color: Colors.white, fontFamily: 'Tajawal'),
                                  children: [
                                    TextSpan(text: 'أنا أوافق على '),
                                    TextSpan(text: 'سياسات وشروط الاستخدام', style: TextStyle(decoration: TextDecoration.underline)),
                                    TextSpan(text: '\nبإنشائك حساب SafeRoad أنت توافق على سياسات وشروط استخدام التطبيق.'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 30),

                        // 7. زر إنشاء حساب جديد
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate() && _agreedToTerms) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('جاري إنشاء الحساب...'))
                              );
                            } else if (!_agreedToTerms) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('يجب الموافقة على الشروط والأحكام أولاً'))
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            elevation: 5,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          ),
                          child: Ink(
                            decoration: BoxDecoration(
                              // التدرج اللوني الأصفر/البرتقالي
                              gradient: const LinearGradient(
                                colors: [Color(0xFFFBBF24), Color(0xFFFFCC80)],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              constraints: const BoxConstraints(minHeight: 50.0),
                              child: const Text(
                                'إنشاء حساب جديد',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xFF1E293B),
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 40),

                        // 8. التذييل السفلي (لديك حساب؟ سجل دخولك)
                        Center(
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              style: const TextStyle(fontSize: 14, color: Colors.white54, fontFamily: 'Tajawal'),
                              children: [
                                const TextSpan(text: 'لديك حساب SafeRoad بالفعل؟\n'),
                                TextSpan(
                                  text: 'سجل دخولك لحسابك!',
                                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                                  recognizer: TapGestureRecognizer()..onTap = () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}