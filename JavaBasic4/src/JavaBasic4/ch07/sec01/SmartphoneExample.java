package JavaBasic4.ch07.sec01;

public class SmartphoneExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
Phone p = new Phone();
p.bell();

p.sendVoice("�� ���!");
p.receiveVoice("�� ��� �ʵ� �����?");


Smartphone sp =new Smartphone();
sp.sendVoice("���� ���� �ž�?");
sp.receiveVoice("������ �����Ұž�");
sp.hangUp();

	Smartphone sp2 = new Smartphone("������", "���");
	//������ ����ϱ�
	System.out.println(sp2.model);
	sp2.setWifi(false);
	if(sp2.wifi) {
		
		System.out.println(sp2.model + "�������̰� �˴ϴ�.");
	
	}
	else {System.out.println(sp2.color + "�������̰� �ȵ˴ϴ�");
	}
	
	System.out.println(sp2.model + "�� " + sp2.color +"�̰� ");
	sp2.bell();
	
	
	System.out.println(sp2.model + "�� �޼����� �Խ��ϴ�");
	sp2.sendVoice("�ڵ��� ���?");
	
	
	// �θ� Ŭ�������� �ڽ��� wifi �ʵ�, �޼ҵ� ����ϱ�
	/* �θ�Ŭ���������� �ڽ��� ������� �� �� ����.
	p.wifi=(true);
	p.setwifi(true);
	p.internet(); */
	
	
	
	
	}
}
