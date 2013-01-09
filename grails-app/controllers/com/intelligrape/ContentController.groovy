package com.intelligrape

class ContentController {

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        render(view:'list', model: [contents: Content.list(params), total: Content.count()])
    }

    def filter = {
        Thread.sleep(1000)
        render(template: 'filter', model: [contents: Content.list(params), total: Content.count()])
    }
}
