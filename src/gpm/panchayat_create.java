/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gpm;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/**
 *
 * @author sachin
 */
public class panchayat_create extends javax.swing.JFrame {

    /**
     * Creates new form panchayat_create
     */
    public panchayat_create() {
        initComponents();
         this.setLocationRelativeTo(null);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel9 = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jTextField2 = new javax.swing.JTextField();
        jTextField3 = new javax.swing.JTextField();
        jTextField4 = new javax.swing.JTextField();
        jTextField5 = new javax.swing.JTextField();
        jButton1 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setMinimumSize(new java.awt.Dimension(724, 523));
        getContentPane().setLayout(null);

        jPanel1.setBackground(new java.awt.Color(40, 26, 68));

        jLabel9.setFont(new java.awt.Font("Noto Sans", 1, 18)); // NOI18N
        jLabel9.setForeground(new java.awt.Color(254, 254, 254));
        jLabel9.setText("Create");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(120, 120, 120)
                .addComponent(jLabel9)
                .addContainerGap(158, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(179, 179, 179)
                .addComponent(jLabel9)
                .addContainerGap(330, Short.MAX_VALUE))
        );

        getContentPane().add(jPanel1);
        jPanel1.setBounds(0, 0, 345, 531);

        jPanel2.setBackground(new java.awt.Color(254, 254, 254));
        jPanel2.setLayout(null);

        jLabel1.setText("Aadhar no");
        jPanel2.add(jLabel1);
        jLabel1.setBounds(83, 48, 80, 20);

        jLabel2.setText("Name");
        jPanel2.add(jLabel2);
        jLabel2.setBounds(83, 91, 80, 20);

        jLabel3.setText("Post");
        jPanel2.add(jLabel3);
        jLabel3.setBounds(83, 137, 90, 20);

        jLabel4.setText("Elected On");
        jPanel2.add(jLabel4);
        jLabel4.setBounds(80, 180, 90, 20);

        jLabel5.setText("password");
        jPanel2.add(jLabel5);
        jLabel5.setBounds(80, 230, 90, 20);
        jPanel2.add(jTextField1);
        jTextField1.setBounds(220, 43, 120, 30);
        jPanel2.add(jTextField2);
        jTextField2.setBounds(220, 90, 120, 30);
        jPanel2.add(jTextField3);
        jTextField3.setBounds(220, 130, 120, 30);
        jPanel2.add(jTextField4);
        jTextField4.setBounds(220, 180, 120, 30);
        jPanel2.add(jTextField5);
        jTextField5.setBounds(220, 230, 120, 30);

        jButton1.setText("Enter");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        jPanel2.add(jButton1);
        jButton1.setBounds(280, 330, 56, 32);

        getContentPane().add(jPanel2);
        jPanel2.setBounds(335, -1, 380, 520);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
        String n1=jTextField1.getText();
        String n2=jTextField2.getText();
        String n3=jTextField3.getText();
        String n4=jTextField4.getText();
        String n5=jTextField5.getText();

        try
        {
            int a=0;
            Class.forName("java.sql.DriverManager");
            Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/villagedb","sachin","NeverSettle!97");
            Statement stmt=(Statement) con.createStatement();
            String query="INSERT INTO panchayat1 VALUES('"+n1+"','"+n2+"','"+n3+"','"+n4+"','"+n5+"');";
            stmt.executeUpdate(query);

        }catch(Exception e)
        {
            System.out.println(e);
        }
        setVisible(false);
    }//GEN-LAST:event_jButton1ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(panchayat_create.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(panchayat_create.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(panchayat_create.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(panchayat_create.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new panchayat_create().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField2;
    private javax.swing.JTextField jTextField3;
    private javax.swing.JTextField jTextField4;
    private javax.swing.JTextField jTextField5;
    // End of variables declaration//GEN-END:variables
}