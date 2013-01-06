package com.intelligrape

class ContentController {

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 20, 100)
        render(view:'list', model: [contents: Content.list(params), total: Content.count()])
    }

    def filter = {
        params.max = Math.min(params.max ? params.int('max') : 20, 100)
        render(template: 'filter', model: [contents: Content.list(params), total: Content.count()])
    }
}
