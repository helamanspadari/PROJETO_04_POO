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
public interface ClienteInterface {
    public String rg = "";
    public String cpf = "";
    
    public String getRg();
    public void setRg(String rg);
    
    public String getCpf();
    public void setCpf(String cpf);
}
