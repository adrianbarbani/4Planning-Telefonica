@isTest
private class test_Actividades {

    static testMethod void myUnitTest() {
        // TO DO: implement unit test
        Event evento=new Event();
        evento.Description='aaa';
        evento.DurationInMinutes=19;
        evento.ActivityDateTime=Datetime.now();
        
        insert evento;
        
        Task tarea=new Task();
        tarea.Description='aaa';
        
        insert tarea;
        
        for(Integer i=0;i<260;i++){
          evento.Description+='a';
          tarea.Description+='a';
        }
        
        update evento;
        update tarea;
    }
}