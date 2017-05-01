package cadastros;

import java.util.ArrayList;

public class Fornecedor extends Pessoa implements FornecedorInterface{
    private String id;
    private String razao;
    private String cnpj;
    private static ArrayList<Fornecedor> listFornecedor;

    public Fornecedor(String id, String nome, String razao, String cnpj, String email, String telefone, String endereco){
        this.setId(id);
        this.setNome(nome);
        this.setRazao(razao);
        this.setCnpj(cnpj);
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
    
    public static void setListFornecedor(Fornecedor fornecedor){
        if(!(listFornecedor instanceof ArrayList)){
            listFornecedor = new ArrayList<>();
        }
        listFornecedor.add(fornecedor);
    }
    
    public static ArrayList<Fornecedor> getListFornecedor(){
        return listFornecedor;
    }
    
    public static boolean remove(String id){
        for (Fornecedor f : listFornecedor) {
            if (f.getId().equals(id)) {
                listFornecedor.remove(f);
                return true;
            }
        }
        return false;
    }
}
