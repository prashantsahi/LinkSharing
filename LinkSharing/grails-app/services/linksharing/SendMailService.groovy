package linksharing

import grails.transaction.Transactional

@Transactional
class SendMailService {

    void sendMailMethod(String to1,String subject1,String html1) {

        sendMail {
            async true
            to to1
            subject subject1
            html html1
        }

    }
}
