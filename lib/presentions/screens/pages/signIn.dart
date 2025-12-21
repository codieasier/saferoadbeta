import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:saferoadbeta/presentions/screens/pages/signUp.dart';

// 1. تحويل Class SignInpage إلى StatefulWidget
class SignInpage extends StatefulWidget {
  const SignInpage({super.key});

  @override
  State<SignInpage> createState() => _SignInpageState();
}

class _SignInpageState extends State<SignInpage> {
  // مفاتيح ووحدات التحكم اللازمة لوظائف النموذج
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // === الدوال المساعدة (بالتصميم الذي أعجبك) ===

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

  Widget _buildTextFormField({
    required TextEditingController controller,
    required String hintText,
    required IconData icon,
    bool obscureText = false,
    TextInputType keyboardType = TextInputType.text,
    String? Function(String?)? validator,
  }) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      style: const TextStyle(color: Colors.white, fontSize: 16),
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white54.withOpacity(0.7), fontSize: 15),
        filled: true,
        fillColor: Colors.white.withOpacity(0.1),

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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172B),
      body: SafeArea(
        child: Column(
          children: [
            // المسافة العلوية (30px) كما في الكود الأصلي
            const SizedBox(height: 30),

            // 2. استخدام Expanded كما في الكود الأصلي
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 30.0), // إضافة Padding للحواف

                // الديكور (Decoration) كما في الكود الأصلي
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

                // 3. إضافة SingleChildScrollView لمنع الـ Overflow بسبب Expanded/لوحة المفاتيح
                child: SingleChildScrollView(
                  // 4. استخدام Form لتغليف المدخلات
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(height: 55), // كما في الكود الأصلي

                        // العنوان
                        const Text(
                          'سجل دخولك إلى حسابك',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontFamily: 'Tajawal', fontSize: 24, fontWeight: FontWeight.w900, color: Colors.white),
                        ),

                        // حقل البريد الإلكتروني
                        _buildLabel('البريد الإلكتروني'),
                        _buildTextFormField(
                          controller: _emailController,
                          hintText: 'username@mail.com',
                          icon: Icons.person_outline,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null || value.isEmpty) return 'الرجاء إدخال البريد الإلكتروني.';
                            String pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
                            RegExp regex = RegExp(pattern);
                            if (!regex.hasMatch(value)) return 'صيغة البريد الإلكتروني غير صحيحة.';
                            return null;
                          },
                        ),

                        // حقل كلمة المرور
                        _buildLabel('كلمة المرور'),
                        _buildTextFormField(
                          controller: _passwordController,
                          hintText: '***********',
                          icon: Icons.lock_outline,
                          obscureText: true,
                          validator: (value) => (value == null || value.isEmpty || value.length < 6) ? 'كلمة المرور قصيرة جداً (6 أحرف على الأقل).' : null,
                        ),

                        // هل نسيت كلمة المرور؟
                        Align(
                          alignment: Alignment.centerLeft,
                          child: TextButton(onPressed: () {}, child: const Text(
                              'هل نسيت كلمة المرور؟',
                              style: TextStyle(color: Colors.white54, fontSize: 13)
                          )),
                        ),

                        const SizedBox(height: 30),

                        // زر تسجيل الدخول
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('جاري تسجيل الدخول...')),);
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            elevation: 5,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          ),
                          child: Ink(
                            decoration: BoxDecoration(
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
                                'تسجيل الدخول',
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

                        const Text(
                          '—  أو سجل دخولك عبر:  —',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white70, fontSize: 14),
                        ),
                        const SizedBox(height: 30,),
                        // زر تسجيل الدخول عبر Google باستخدام SvgPicture
                        OutlinedButton.icon(
                          onPressed: () {
                            // منطق تسجيل الدخول عبر جوجل
                          },
                          // الأيقونة المستخدمة
                          icon: SvgPicture.asset(
                            'assets/icons/googlelogo.svg', // تأكد من مطابقة المسار تماماً
                            height: 24.0, // التحكم في حجم الأيقونة
                          ),
                          label: const Text(
                            'تسجيل الدخول باستخدام جوجل',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            side: const BorderSide(color: Colors.white54, width: 1), // حدود بيضاء خفيفة
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          ),
                        ),

                        const SizedBox(height: 20),


                        // التذييل السفلي (ليس لديك حساب؟) - قد يحتاج مساحة إضافية للتمرير
                      RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          style: const TextStyle(fontSize: 14, color: Colors.white54, fontFamily: 'Tajawal'),
                          children: [
                            const TextSpan(text: 'ليس لديك حساب SafeRoad؟\n'),
                            TextSpan(
                              text: 'أنشئ حسابك الآن!',
                              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                              recognizer: TapGestureRecognizer()..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const SignUpPage()),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                        const SizedBox(height: 40), // مسافة إضافية في الأسفل لضمان التمرير
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