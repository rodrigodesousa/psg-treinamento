package br.com.psg.treinamento;

import org.camunda.bpm.engine.delegate.ExecutionListener;
import org.camunda.bpm.engine.delegate.DelegateExecution;

public class Recepcao implements ExecutionListener {

    public void notify(DelegateExecution execution) throws Exception {
      String nome = execution.getVariable("nomeCliente").toString();
      System.out.println("Cheguei na recepção -> " + nome);
    }
}