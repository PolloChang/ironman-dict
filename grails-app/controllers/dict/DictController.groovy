package dict

import grails.converters.JSON

class DictController {

    def dictService

    def index() { }

    /**
     * 查詢
     * @return
     */
    JSON filter(){
        LinkedHashMap result = dictService.filter(params)

        render result as JSON
    }
}
