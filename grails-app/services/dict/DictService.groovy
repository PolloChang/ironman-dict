package dict

import grails.gorm.transactions.Transactional
import grails.web.servlet.mvc.GrailsParameterMap

@Transactional
class DictService {

    LinkedHashMap filter(GrailsParameterMap params) {
        LinkedHashMap result = [:]

        String word = params?.searchWord

        def dictL = Dict.createCriteria().list(params){
            if(word){
                eq("word",word)
            }
        }
        result.total = dictL.totalCount
        result.rows = dictL.collect { it ->
            [

                    id          : it?.id,
                    word        : it?.word,
                    radical     : it?.radical,
                    totalStrokes: it?.totalStrokes,
                    outStrokes  : it?.outStrokes,
                    mpc         : it?.mpc,
                    explanation : it?.explanation,
            ]
        }


        return result

    }
}
