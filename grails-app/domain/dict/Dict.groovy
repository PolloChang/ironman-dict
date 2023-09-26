package dict

class Dict {

    Date dateCreated = new Date()
    Date lastUpdated
    String word
    String radical
    int totalStrokes
    int outStrokes
    String mpc
    String explanation

    static mapping = {
        table 'dict'
        comment: '字典'
        version true

        id              column: 'id'
        dateCreated     column: 'date_created',   comment: '建檔時間'
        lastUpdated     column: 'last_updated',   comment: '最後異動時間'
        word            column: 'word',           comment: '單字'
        radical         column: 'radical',        comment: '部首'
        totalStrokes    column: 'total_strokes',  comment: '總筆畫數'
        outStrokes      column: 'out_strokes',    comment: '部首外筆畫'
        mpc             column: 'mpc',            comment: '注音'
        explanation     column: 'explanation',    comment: '解釋',        type: 'text'

    }

    static constraints = {
        dateCreated			(nullable:false, blank: false)
        lastUpdated			(nullable:false, blank: false)
        word			    (nullable:false, blank: false, maxSize: 1)
        radical			    (nullable:false, blank: false, maxSize: 1)
        totalStrokes		(nullable:false, blank: false)
        outStrokes			(nullable:false, blank: false)
        mpc			        (nullable:false, blank: false, maxSize: 4)
        explanation			(nullable:false, blank: false)
    }
}
