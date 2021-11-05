//
//  FinalQuizQuestionBank.swift
//  Nakd
//
//  Created by Ali Fayed on 04/11/2021.
//

import Foundation

class FinalQuizQuestionBank{
    var list = [FinalQuizQuestions]()
    
    init() {
        list.append(FinalQuizQuestions(image: "questions",
                                       questionText: "من استراتيجية زيادة التركيز والفهم : التى تساعدك على تنظيم المعلومات من رسوم التصنيف , وشجرة الذاكرة , وهيكل السمكة هو:",
                                       choiceA: "الرسوم والجداول",
                                       choiceB: "تدوين الملحوظات والتعليقات",
                                       choiceC: "التلخيص",
                                       answer: 3))
        
        list.append(FinalQuizQuestions(image: "questions",
                                       questionText: "في مرحلة ما بعد القراءة؛ السؤال الذي تحتاج انك تجيب عن الاسئلة التى لم تجد اجابتها هو:",
                                       choiceA: "هل الاجابة صحيحة ؟",
                                       choiceB: "هل أجبت عن جميع الاسئلة",
                                       choiceC: "مامدى كفاية الملخص ؟",
                                       answer: 1))
        
        list.append(FinalQuizQuestions(image: "questions",
                                       questionText: "في مرحلة ما بعد القراءة؛ السؤال الذي تحتاج الى ملخص جيد يحتوي الافكار الرئيسة للموضوع جميعها هو:",
                                       choiceA: "مامدى كفاية الملخص ؟",
                                       choiceB: "هل الاجابة صحيحة",
                                       choiceC: "موعد المراجعة اللاحقة",
                                       answer: 3))
        
        list.append(FinalQuizQuestions(image: "questions",
                                       questionText: "من خطوات القراءة المتعمقة : يبدأ القارئ  يحول الافكار الرئيسة للموضوع الى اسئلة ( سؤال أو أكثر ) هو:",
                                       choiceA: "استطلع",
                                       choiceB: "اسأل",
                                       choiceC: "اقرأ",
                                       answer: 2))
        
        list.append(FinalQuizQuestions(image: "questions",
                                       questionText: "في مرحلة ما بعد القراءة؛ السؤال الذي تحتاج الى تفاصيل ايضاحية او مزيد من المعلومات او متابعة المستجدات هو:",
                                       choiceA: "هل أنا بحاجة الى المزيد من المعلومات ؟",
                                       choiceB: "هل الاجابة صحيحة ؟",
                                       choiceC: "هل أجبت عن جميع الاسئلة ؟",
                                       answer: 1))
        
        list.append(FinalQuizQuestions(image: "questions",
                                       questionText: "من عمليات القراءة التمهيدية السريعة : يحدد الاهداف ويلخص ويسأل ويبرز الكلمات المهمه ويضع عناوين واضحة الدلالة هو :",
                                       choiceA: "اقرأ مطالع فقرات المقدمة",
                                       choiceB: "كيف يساعدك المؤلف ؟",
                                       choiceC: "اقرأ العناوين الرئيسة والجانبية",
                                       answer: 3))
        
        list.append(FinalQuizQuestions(image: "questions",
                                       questionText: "من استراتيجية زيادة التركيز والفهم : التى تعينك على حفظ بعض المعلومات والتواريخ وتعريف المصطلحات.",
                                       choiceA: "التلخيص",
                                       choiceB: "التسميع",
                                       choiceC: "الجداول والرسوم",
                                       answer: 1))
        
        list.append(FinalQuizQuestions(image: "questions",
                                       questionText: "من عمليات القراءة التمهيدية السريعة : تلخص أكثر المعلومات تشعباً وتساعد على الفهم هو:",
                                       choiceA: "خذ فكرة عن بنية الكتاب",
                                       choiceB: "افحص الرسوم والجداول",
                                       choiceC: "اقرأ مطالع فقرات المقدمة",
                                       answer: 2))
        
        list.append(FinalQuizQuestions(image: "questions",
                                       questionText: "تتكون عمليات القراءة المركزة من :",
                                       choiceA: "ثلاث مراحل",
                                       choiceB: "اربع مراحل",
                                       choiceC: "خمس مراحل",
                                       answer: 3))
        
        list.append(FinalQuizQuestions(image: "questions",
                                       questionText: "من خطوات القراءة المتعمقة : يبدأ القارئ بغلق الكتاب ثم يجيب من الذاكرة عن اسئلتك بعد تنقيحها هو:",
                                       choiceA: "استطلع",
                                       choiceB: "أجب",
                                       choiceC: "اقرأ",
                                       answer: 1))
        
        list.append(FinalQuizQuestions(image: "questions",
                                       questionText: "من خطوات القراءة المتعمقة : يبدا القارئ من التأكد من انها صحيحة وافية هو :",
                                       choiceA: "راجع",
                                       choiceB: "اقرأ",
                                       choiceC: "استطلع",
                                       answer: 1))
        
        list.append(FinalQuizQuestions(image: "questions",
                                       questionText: "في مرحلة ما قبل القراءة؛ السؤال الذي يكون فيه البحث عن معلومة  أو الاستعداد للاختبار هو:",
                                       choiceA: "كيف ساتاكد من فهم الموضوع",
                                       choiceB: "اين سأجد ما ابحث عنه",
                                       choiceC: "مالهدف من القراءة",
                                       answer: 1))
        
        list.append(FinalQuizQuestions(image: "questions",
                                       questionText: "من خطوات القراءة المتعمقة :يقصد بها التصفح  المادّة المراد قراء تها، أو مسحها بشكل شامل هو:",
                                       choiceA: "أجب",
                                       choiceB: "راجع",
                                       choiceC: "استطلع",
                                       answer: 1))
        
        list.append(FinalQuizQuestions(image: "questions",
                                       questionText: "هناك اشارات واختصارات تساعد على السرعة في تدوين الملحوظات دلالته (نقطة مهمة ) هو:",
                                       choiceA: "*",
                                       choiceB: "-",
                                       choiceC: "%",
                                       answer: 1))
        
        list.append(FinalQuizQuestions(image: "questions",
                                       questionText: "في مرحلة ما قبل القراءة؛السؤال الذي يساعدك على اختصار الوقت الذي تقضيه في البحث عن المعلومة او ستذهب الى فهرس الموضوعات ، هو:",
                                       choiceA: "أين سأقرأ عنه؟",
                                       choiceB: "أين سأجد ما ابحث عنه",
                                       choiceC: "لماذا أقرأ؟",
                                       answer: 1))
        
        list.append(FinalQuizQuestions(image: "questions",
                                       questionText: "من عمليات القراءة التمهيدية السريعة : ابحث عن الاجزاء الرئيسة والتفصيلات التى يغطيها الكتاب هو:",
                                       choiceA: "اقرأ مطالع فقرات المقدمة",
                                       choiceB: "اقرأ العناوين الرئيسة والجانبية",
                                       choiceC: "افحص الرسوم والجداول",
                                       answer: 1))
        
        list.append(FinalQuizQuestions(image: "questions",
                                       questionText: "هناك اشارات واختصارات تساعد على السرعة في تدوين الملحوظات دلا لته ( يؤدي اللى ) هو",
                                       choiceA: "&",
                                       choiceB: "←",
                                       choiceC: "=",
                                       answer: 1))
        
        list.append(FinalQuizQuestions(image: "questions",
                                       questionText: "في مرحلة ما قبل القراءة؛ السؤال الذي يعينك على استحضار معلوماتك السابقة عنه، هو:",
                                       choiceA: "لماذا أقرأ؟",
                                       choiceB: "أين سأقرأ عنه؟",
                                       choiceC: "ماذا أعرف عنه؟",
                                       answer: 1))
        
        list.append(FinalQuizQuestions(image: "questions",
                                       questionText: "من استراتيجية زيادة التركيز والفهم : التى تستخدم بعض الرموز او استخدام بعض الجمل والعبارات هو:",
                                       choiceA: "التسميع",
                                       choiceB: "الاسئلة",
                                       choiceC: "تدوين المحوظات والتعليقات",
                                       answer: 1))
        
        list.append(FinalQuizQuestions(image: "questions",
                                       questionText: "في مرحلة ما قبل القراءة؛ السؤال الذي يساعدك على تحديد الأدوات التي تستخدمها لتقويم فهمك، هو:",
                                       choiceA: "كيف أتأكد من الفهم والاستيعاب؟",
                                       choiceB: "أين سأجد المعلومة التي أبحث عنها؟",
                                       choiceC: "ماذا أحتاج لأستوعب بصورة أفضل؟",
                                       answer: 1))
        
        list.append(FinalQuizQuestions(image: "questions",
                                       questionText: "في مرحلة ما قبل القراءة؛السؤال الذي يساعدك على رسم خطة للقراءة  كأن تقرا مع زميل او تستخدم كراسة للتلخيص وتدوين الملحوظات هو:",
                                       choiceA: "ماذا أحتاج لأستوعب بصورة أفضل؟",
                                       choiceB: "أين سأجد المعلومة التي أبحث عنها؟",
                                       choiceC: "كيف أتأكد من الفهم والاستيعاب؟",
                                       answer: 1))
        
        list.append(FinalQuizQuestions(image: "questions",
                                       questionText: "في مرحلة ما بعد القراءة : السؤال الذي تحتاج الى مراجعة لاحقة هو :",
                                       choiceA: "هل أنا بحاجة الى المزيد من المعلومات؟",
                                       choiceB: "موعد المراجعة اللاحقة ؟",
                                       choiceC: "مامدى كفاية الملخص",
                                       answer: 1))
        
        list.append(FinalQuizQuestions(image: "questions",
                                       questionText: "من استراتيجية زيادة التركيز والفهم : التي تستخدم في جميع مراحل القراءة , قبل ان تقرا وفي اثناء القراءة , وبعد القراءة هو:",
                                       choiceA: "التلخيص",
                                       choiceB: "التسميع",
                                       choiceC: "الاسئلة",
                                       answer: 1))
        
        list.append(FinalQuizQuestions(image: "questions",
                                       questionText: "من عمليات القراءة التمهيدية السريعة : موضع الفهارس والملاحق وأطول الموضوعات وأهمها واكثرها تشعباً هو:",
                                       choiceA: "اقرأ مطالع فقرات المقدمة",
                                       choiceB: "افحص الرسوم والجداول",
                                       choiceC: "خذ فكرة عن بنية الكتاب",
                                       answer: 1))
        
        list.append(FinalQuizQuestions(image: "questions",
                                       questionText: "من استراتيجية زيادة التركيز والفهم : التى تحدد لك الافكار الرئية وماتطرحه من أسئلة جول فقرات الموضوع وإجاباتك عن الاسئلة .",
                                       choiceA: "التلخيص",
                                       choiceB: "تدوين الملحوظات والتعليقات",
                                       choiceC: "الاسئلة",
                                       answer: 1))
        
        list.append(FinalQuizQuestions(image: "questions",
                                       questionText: "من خطوات القراءة المتعمقة : يبدأ القارئ بقراءة الموضوع بتركيز وانتباه باحثا عن اجوبة لأسئلتك التى طرحتها هو :",
                                       choiceA: "راجع",
                                       choiceB: "اسأل",
                                       choiceC: "اقرأ",
                                       answer: 1))
        
        list.append(FinalQuizQuestions(image: "questions",
                                       questionText: "من عمليات القراءة التمهيدية السريعة : حدد موضوع الكتاب هو :",
                                       choiceA: "اقرأ مطالع فقرات المقدمة",
                                       choiceB: "اقرأ العناوين الرئيسة والجانبية",
                                       choiceC: "افحص الرسوم والجداول",
                                       answer: 1))
        
        list.append(FinalQuizQuestions(image: "questions",
                                       questionText: "هناك اشارات واختصارات تساعد على السرعة في تدوين الملحوظات دلالته ( تقريبا واحتمال ) هو:",
                                       choiceA: "؟",
                                       choiceB: "*",
                                       choiceC: "~",
                                       answer: 1))
        
        list.append(FinalQuizQuestions(image: "questions",
                                       questionText: "في مرحلة ما بعد القراءة؛ السؤال الذي تحتاج الى مطابقة الاجابة بالكتاب او عرض الاسئلة والاجوبة على زملائك هو:",
                                       choiceA: "موعد المراجعة اللاحقة ؟",
                                       choiceB: "هل أنا بحاجة الى المزيد من المعلومات ؟",
                                       choiceC: "هل الاجابة صحيحة",
                                       answer: 1))
        
        list.append(FinalQuizQuestions(image: "questions",
                                       questionText: "هناك اشارات واختصارات تساعد على السرعة في تدوين الملحوظات دلالته (خلاصة القول ) هو:",
                                       choiceA: "□",
                                       choiceB: "؟",
                                       choiceC: "/",
                                       answer: 1))
    }
}
