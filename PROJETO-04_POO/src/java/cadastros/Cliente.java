package cadastros;

import java.util.ArrayList;

public class Cliente extends Pessoa implements ClienteInterface{
    public  String id;
    private String cpf;
    private String rg;
    private static ArrayList<Cliente> listCliente;
    
    public void Cliente(String id, String nome, String cpf, String rg, String email, String telefone, String endereco){
        this.setId(id);
        this.setNome(nome);
        this.setCpf(cpf);
        this.setRg(rg);
        this.setEmail(email);
        this.setTelefone(telefone);
        this.setEndereco(endereco);
    }   
    
    public String getId(){
        return id;
    }
    
    public void setId(String id){
        this.id = id;
    }
    
    public String getCpf() {
        return cpf;
    }
    
    public void setCpf(String cpf) {
        this.cpf = cpf;
    }
    
    public String getRg() {
        return rg;
    }
    
    public void setRg(String rg) {
        this.rg = rg;
    }


    public static void setListCliente(Cliente cliente){
        if(!(listCliente instanceof ArrayList)){
            listCliente = new ArrayList<>();
        }
        listCliente.add(cliente);
        
    }
    
    public static ArrayList<Cliente> getListCliente(){
        return listCliente;
    }
    
    public static boolean remove(String id){
        for (Cliente c : listCliente) {
            if (c.getId().equals(id)) {
                listCliente.remove(c);
                return true;
            }
        }
        return false;
    }
}