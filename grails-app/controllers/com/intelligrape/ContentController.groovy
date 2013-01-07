package com.intelligrape

class ContentController {

    def list = {
        render(view:'list', model: [contents: Content.list(params), total: Content.count()])
    }

    def filter = {
        render(template: 'filter', model: [contents: Content.list(params), total: Content.count()])
    }
}
