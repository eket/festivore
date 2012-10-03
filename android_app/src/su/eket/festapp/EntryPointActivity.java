package su.eket.festapp;

import android.webkit.WebSettings;

import android.app.Activity;
import android.os.Bundle;
import android.webkit.WebView;

public class EntryPointActivity extends Activity {
    @Override public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
	
	WebView webview = ((WebView) findViewById(R.id.webview));
	WebSettings websettings = webview.getSettings();
	websettings.setJavaScriptEnabled(true);
	websettings.setGeolocationEnabled(false);
	websettings.setUseWideViewPort(true);
	websettings.setSupportZoom(false);
	websettings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NORMAL);

	webview.loadUrl(getString(R.string.webapp_url));
	return;
    }
}
