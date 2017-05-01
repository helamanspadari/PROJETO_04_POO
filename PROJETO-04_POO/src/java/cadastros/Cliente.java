package cadastros;

public class Cliente extends Pessoa implements ClienteInterface{
    public int id;
    private String cpf;
    private String rg;
    
    public void Cliente(int id, String nome, String cpf, String rg, String email, String telefone, String endereco){
        this.setNome(nome);
        this.setCpf(cpf);
        this.setRg(rg);
        this.setEmail(email);
        this.setTelefone(telefone);
        this.setEndereco(endereco);
    }
    
    public int getId(){
        return id;
    }
    
    public void setId(int id){
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
}