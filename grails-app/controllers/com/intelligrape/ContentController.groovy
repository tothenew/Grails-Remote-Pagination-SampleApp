package com.intelligrape

class ContentController {

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        render(view:'list', model: [contents: Content.list(params), total: Content.count()])
    }

    def filter = {
        render(template: 'filter', model: [contents: Content.list(params), total: Content.count()])
    }
}
