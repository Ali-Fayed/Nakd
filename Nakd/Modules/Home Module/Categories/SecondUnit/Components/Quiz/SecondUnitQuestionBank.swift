//
//  SecondUnitQuestionBank.swift
//  Nakd
//
//  Created by Ali Fayed on 04/11/2021.
//


import Foundation

class SecondUnitQuestionBank{
    var list = [SecondUnitQuestion]()
    
    init() {
        list.append(SecondUnitQuestion(image: "questions",
                                       questionText: "من أسئلة ماقبل القراءة :",
                                       choiceA: "أ - ماالهدف",
                                       choiceB: "ب ـ هل أحتاج إلى معلومات إضافية",
                                       choiceC: "ج - هل الملخص جيد",
                                       choiceD: "د - أين سأجد المعلومة",
                                       answer: 1))
        
        list.append(SecondUnitQuestion(image: "questions",
                                       questionText: "من خطوات القراءة المتعمقة :",
                                       choiceA: "أ - أرسم",
                                       choiceB: "ب - أين سأجد المعلومة",
                                       choiceC: "ج - ألخص",
                                       choiceD: "د - أسأل",
                                       answer: 4))
        
        list.append(SecondUnitQuestion(image: "questions",
                                       questionText: "من أهم عمليات القراءة التمهيدية :",
                                       choiceA: "أ - مطالع الفقرات",
                                       choiceB: "ب - بنية الكتاب",
                                       choiceC: "ج - تفاصيل الموضوع",
                                       choiceD: "د - خاتمة الموضوع",
                                       answer: 2))
        
        list.append(SecondUnitQuestion(image: "questions",
                                       questionText: "من أساليب المؤلف لمساعدة القارئ:",
                                       choiceA: "أ - تحديد الفهرس",
                                       choiceB: "ب - تحديد المراجع",
                                       choiceC: "ج - تحديد الأهداف",
                                       choiceD: "د - تحديد المضمون",
                                       answer: 3))
        
        list.append(SecondUnitQuestion(image: "questions",
                                       questionText: "الهدف من قراءة القصة :",
                                       choiceA: "أ - المتعة",
                                       choiceB: "ب- البحث عن المعلومة",
                                       choiceC: "ج - الإستعداد للاختبار",
                                       choiceD: "د - زيادة الرصيد الثقافي",
                                       answer: 1))
        
        list.append(SecondUnitQuestion(image: "questions",
                                       questionText: "أثناء القراءة أستطلع عن طريق :",
                                       choiceA: "أ - الإجابة من الذاكرة",
                                       choiceB: "ب - تلخيص الموضوع",
                                       choiceC: "ج - وضع خط تحت الفكرة",
                                       choiceD: "د- طرح أسئلة",
                                       answer: 3))
        
        list.append(SecondUnitQuestion(image: "questions",
                                       questionText: "نحتاج عند القراءة للاختبار :",
                                       choiceA: "أ - معجم",
                                       choiceB: "ب - فهرس",
                                       choiceC: "ج - هدوء وتركيز",
                                       choiceD: "د - مصطلحات",
                                       answer: 3))
        
        list.append(SecondUnitQuestion(image: "questions",
                                       questionText: "تعد قراءة العناوين الرئيسة والجانبية من خطوات :",
                                       choiceA: "أ - القراءة المتعمقة",
                                       choiceB: "ب - القراءة التمهيدية",
                                       choiceC: "ج - القراءة المركزة",
                                       choiceD: "د - القراءة الحرة",
                                       answer: 2))
        
        list.append(SecondUnitQuestion(image: "questions",
                                       questionText: "عند  قراءة  معجم لغوي أحتاج  إلى :",
                                       choiceA: "أ - تدوين القانون",
                                       choiceB: "ب - معرفة أصول الكلمة",
                                       choiceC: "ج - كراسة خاصة",
                                       choiceD: "د - قراءة مع صديق",
                                       answer: 2))
        
        list.append(SecondUnitQuestion(image: "questions",
                                       questionText: "لو واجهك سؤال عن قانون القوة فمن الطبيعي أن تبحثي عن :",
                                       choiceA: "أ - كتاب التوحيد",
                                       choiceB: "ب - كتاب عن الشعر الجاهلي",
                                       choiceC: "ج - كتاب الفيزياء",
                                       choiceD: "د - كتاب عن الحاسب الآلي",
                                       answer: 3))
        
    }
}
