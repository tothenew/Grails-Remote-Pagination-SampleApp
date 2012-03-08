package com.intelligrape

class BookController {
    def scaffold = true

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 5, 100)
        [bookInstanceList: Book.list(params), bookInstanceTotal: Book.count()]
    }

    def filter = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        render(template: 'filter', model: [bookInstanceList: Book.list(params), bookInstanceTotal: Book.count()])
    }

    def demo2 = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        params.maxSteps = Math.min(params.maxSteps ? params.int('maxSteps') : 0, 10)
        render(template: 'demo2', model: [bookInstanceList: Book.list(params), bookInstanceTotal: Book.count()])
    }
}
