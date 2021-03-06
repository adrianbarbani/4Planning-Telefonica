public class estrategiaDeCrecimientoResumenController {

    public String idCuenta {get; set;}
    
    public Pregunta_AccountGrowthStrategy__c setDeRespuestas {get; set;}
    
    public estrategiaDeCrecimientoResumenController(){
        
        idCuenta = ApexPages.currentPage().getParameters().get('Id');
        
        List<Pregunta_AccountGrowthStrategy__c> respuestas = [select id, Cuenta__c, For_these_TOP_opps_you_just_mentioned_p__c, Include_more_relevant_opportunities_you__c,
                                                             What_are_your_plans_to_develop_and_grow__c, What_are_your_Top_opportunities_that_wil__c from Pregunta_AccountGrowthStrategy__c
                                                             where Cuenta__c =: idCuenta limit 1];
        
        if(respuestas.size() > 0){
            setDeRespuestas = respuestas[0];
        }else{
            setDeRespuestas = new Pregunta_AccountGrowthStrategy__c();
            setDeRespuestas.cuenta__c = idCuenta;
        }
        
    }
}