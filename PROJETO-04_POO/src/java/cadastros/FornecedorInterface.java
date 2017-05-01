/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cadastros;

/**
 *
 * @author tiago
 */
public interface FornecedorInterface {
    public String razao = "";
    public String cnpj = "";
    
    public String getRazao();
    public void setRazao(String razao);
    
    public String getCnpj();
    public void setCnpj(String cnpj);
}
