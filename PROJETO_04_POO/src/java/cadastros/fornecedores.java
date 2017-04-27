package cadastros;

public class fornecedores {
    private String nome;
    private String razao;
    private String cnpj;
    private String email;
    private String telefone;
    private String endereco;

    public void setFornecedores(String nome, String razao, String cnpj, String email, String telefone, String endereco){
        this.setNome(nome);
        
    }
    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }
    public String getRazao() {
        return razao;
    }
    public void setRazao(String razao) {
        this.razao = razao;
    }
    public String getCnpj() {
        return cnpj;
    }
    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getTelefone() {
        return telefone;
    }
    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }
    public String getEndereco() {
        return endereco;
    }
    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }
}
