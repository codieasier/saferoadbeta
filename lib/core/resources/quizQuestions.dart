class QuizQuestion {
  final String question;
  final List<String> answers;
  final int correctIndex;

  QuizQuestion({
    required this.question,
    required this.answers,
    required this.correctIndex,
  });
}
final List<QuizQuestion> quizQuestions = [

  QuizQuestion(
    question: "ما هي السرعة القصوى المسموح بها داخل المدينة؟",
    answers: [
      "30 كم/س",
      "50 كم/س",
      "80 كم/س",
      "100 كم/س",
    ],
    correctIndex: 1,
  ),

  QuizQuestion(
    question: "متى يجب ربط حزام الأمان؟",
    answers: [
      "عند السفر لمسافات طويلة فقط",
      "عند وجود دوريات شرطة",
      "دائمًا أثناء القيادة",
      "خارج المدينة فقط",
    ],
    correctIndex: 2,
  ),

  QuizQuestion(
    question: "ماذا تعني الإشارة الضوئية الصفراء؟",
    answers: [
      "التوقف فورًا",
      "الاستعداد للتوقف",
      "زيادة السرعة",
      "لا تعني شيئًا",
    ],
    correctIndex: 1,
  ),

  QuizQuestion(
    question: "من له أولوية المرور في التقاطع بدون إشارات؟",
    answers: [
      "السيارة الأسرع",
      "السيارة القادمة من اليمين",
      "السيارة الأكبر حجمًا",
      "السيارة القادمة من اليسار",
    ],
    correctIndex: 1,
  ),

  QuizQuestion(
    question: "ما التصرف الصحيح عند الاقتراب من ممر المشاة؟",
    answers: [
      "زيادة السرعة",
      "التنبيه بالمزمار",
      "إعطاء الأولوية للمشاة",
      "تجاهل المشاة",
    ],
    correctIndex: 2,
  ),

  QuizQuestion(
    question: "استخدام الهاتف أثناء القيادة يؤدي إلى:",
    answers: [
      "تحسين التركيز",
      "تقليل الحوادث",
      "تشتيت الانتباه وزيادة الخطر",
      "لا يؤثر على القيادة",
    ],
    correctIndex: 2,
  ),

  QuizQuestion(
    question: "متى يجب تشغيل إشارات الانعطاف؟",
    answers: [
      "بعد الانعطاف",
      "قبل الانعطاف بوقت كافٍ",
      "أثناء الانعطاف فقط",
      "لا داعي لها",
    ],
    correctIndex: 1,
  ),

  QuizQuestion(
    question: "ما هو التصرف الصحيح عند سماع صفارة سيارة إسعاف؟",
    answers: [
      "التوقف في مكانك",
      "زيادة السرعة",
      "إفساح الطريق فورًا",
      "تجاهلها",
    ],
    correctIndex: 2,
  ),

  QuizQuestion(
    question: "قيادة السيارة تحت تأثير التعب تؤدي إلى:",
    answers: [
      "زيادة التركيز",
      "تحكم أفضل",
      "بطء ردود الفعل",
      "لا تؤثر",
    ],
    correctIndex: 2,
  ),

  QuizQuestion(
    question: "ما هو الغرض من خطوط المشاة البيضاء على الطريق؟",
    answers: [
      "لتجميل الطريق",
      "لتحديد مكان عبور المشاة بأمان",
      "لتحديد السرعة",
      "لوقوف السيارات",
    ],
    correctIndex: 1,
  ),

];
