const {
    Client,
    logger,
    Variables
  } = require("camunda-external-task-client-js");
  
  // configuration for the Client:
  //  - 'baseUrl': url to the Process Engine
  //  - 'logger': utility to automatically log important events
  const config = {
    baseUrl: "http://localhost:8080/engine-rest",
    use: logger
  };
  
  // create a Client instance with custom configuration
  const client = new Client(config);
  
  // create a handler for the task
  const handler = async ({ task, taskService }) => {
    // get task variable 'defaultScore'
    const cpf = task.variables.get("cpf");
  
    const processVariables = new Variables()
      .set("nome", "Rodrigo")
      .set("sobrenome", "Sousa")
      .set("dataNascimento", "17/02/1995")
      .set("nomeMae", "Elza");
  
    // complete the task
    try {
      await taskService.complete(task, processVariables);
      console.log("CPF encontrado!");
    } catch (e) {
      console.error(`Falha ao buscar CPF, ${e}`);
    }
  };
  
  // susbscribe to the topic 'creditScoreChecker' & provide the created handler
  client.subscribe("buscar-dados-cpf", handler);

  client.subscribe("buscar-dados-cep", async ({ task, taskService }) => {
    const processVariablesCep = new Variables()
    .set("endereco", "Rua da minha casa");
  
    try {
      await taskService.complete(task, processVariablesCep);
      console.log("CEP encontrado!");
    } catch (e) {
      console.error(`Falha ao buscar CEP, ${e}`);
    }
  });
  
//   client.subscribe("buscar-dados-cep", async ({ task, taskService }) => {
//     console.log(task.variables.get("bar"));
//     console.log(task.variables.get("creditScores"));
//   });