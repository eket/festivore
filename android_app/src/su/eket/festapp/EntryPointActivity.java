package su.eket.festapp;

import android.view.Window;

import android.webkit.WebSettings;

import android.app.Activity;
import android.os.Bundle;
import android.webkit.WebView;

public class EntryPointActivity extends Activity {
    @Override public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
	requestWindowFeature(Window.FEATURE_NO_TITLE);
        setContentView(R.layout.main);

	WebView webview = ((WebView) findViewById(R.id.webview));
	WebSettings websettings = webview.getSettings();
	websettings.setJavaScriptEnabled(true);
	websettings.setDefaultZoom(WebSettings.ZoomDensity.FAR);
	webview.setInitialScale(33);
	webview.loadUrl(getString(R.string.webapp_url));
	webview.zoomOut();
	return;
    }
}
