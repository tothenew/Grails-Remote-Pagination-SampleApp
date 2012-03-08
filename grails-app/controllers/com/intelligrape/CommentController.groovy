package com.intelligrape

class CommentController {
    def scaffold = true

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 3, 100)
        render(view:'list', model: [commentInstanceList: Comment.list(params), commentInstanceTotal: Comment.count()])
    }

    def filter = {
        params.max = Math.min(params.max ? params.int('max') : 3, 100)
        render(template: 'filter', model: [commentInstanceList: Comment.list(params), commentInstanceTotal: Comment.count()])
    }
}
