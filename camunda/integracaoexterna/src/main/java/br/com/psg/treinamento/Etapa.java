package br.com.psg.treinamento;

import org.camunda.bpm.engine.delegate.DelegateExecution;
import org.camunda.bpm.engine.delegate.JavaDelegate;

public class Etapa implements JavaDelegate{

    @Override
    public void execute(DelegateExecution execution)throws Exception{
        System.out.println("\n\tAtividade: " + execution.getCurrentActivityName());
    }
    
}
