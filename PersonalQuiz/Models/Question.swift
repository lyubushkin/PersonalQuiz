//
//  Question.swift
//  PersonalQuiz
//
//  Created by Lyubushkin on 11.02.2021.
//

enum ResponseType {
    case single
    case multiple
    case ranged
}

struct Question {
    let text: String
    let type: ResponseType
    let answers: [Answer]
}

extension Question {
    static func getQuestions() -> [Question] {
        [
            Question(
                text: "Какую пищу вы предпочитаете?",
                type: .single,
                answers: [
                    Answer(text: "Стейк", type: .dog),
                    Answer(text: "Кукуруза", type: .turtle),
                    Answer(text: "Морковь", type: .rabbit),
                    Answer(text: "Рыба", type: .cat)
                ]
            ),
            Question(
                text: "Что вам нравится больше?",
                type: .multiple,
                answers: [
                    Answer(text: "Плавать", type: .turtle),
                    Answer(text: "Спать", type: .cat),
                    Answer(text: "Есть", type: .dog),
                    Answer(text: "Обниматься", type: .rabbit)
                ]
            ),
            Question(
                text: "Любите ли вы поездки на машине?",
                type: .ranged,
                answers: [
                    Answer(text: "Ненавижу", type: .cat),
                    Answer(text: "Нервничаю", type: .rabbit),
                    Answer(text: "Не замечаю", type: .turtle),
                    Answer(text: "Обожаю", type: .dog)
                ]
            )
        ]
    }
}
