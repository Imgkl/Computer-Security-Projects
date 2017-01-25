.class final Lcom/julysystems/appx/AppXWebView;
.super Landroid/webkit/WebView;
.source "AppXWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/julysystems/appx/AppXWebView$AppXWebChromeClient;,
        Lcom/julysystems/appx/AppXWebView$AppXWebViewClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "APPX_WEBVIEW"

.field private static mAppXOverlayUpdateListner:Lcom/julysystems/appx/AppXOverlayUpdateListner;


# instance fields
.field private final appxView:Lcom/julysystems/appx/AppXViewUpdateListner;

.field private context:Landroid/content/Context;

.field pd:Landroid/app/ProgressDialog;

.field progreesBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/julysystems/appx/AppXWebView;->appxView:Lcom/julysystems/appx/AppXViewUpdateListner;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageData;Lcom/julysystems/appx/AppXViewUpdateListner;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "webViewElement"    # Lorg/w3c/dom/Element;
    .param p3, "pageData"    # Lcom/julysystems/appx/AppXPageData;
    .param p4, "appxView"    # Lcom/julysystems/appx/AppXViewUpdateListner;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 57
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/julysystems/appx/AppXWebView;->context:Landroid/content/Context;

    .line 58
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/julysystems/appx/AppXWebView;->appxView:Lcom/julysystems/appx/AppXViewUpdateListner;

    .line 60
    :try_start_0
    const-string v2, "APPX_WEBVIEW"

    const-string v3, "Creating webview ......"

    invoke-static {v2, v3}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/julysystems/appx/AppXWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/julysystems/appx/AppXWebView;->setBackgroundColor(I)V

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/julysystems/appx/AppXWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v15

    .line 67
    .local v15, "settings":Landroid/webkit/WebSettings;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v16, "ua":Ljava/lang/StringBuilder;
    const-string v2, "Mozilla/5.0 (Linux; U; Android "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v2, "en-us; dream) AppleWebKit/525.10+ (KHTML, like Gecko) Version/3.0.4 Mobile Safari/523.12.2"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 74
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/julysystems/appx/AppXWebView;->setVerticalScrollBarEnabled(Z)V

    .line 75
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 76
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 77
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 79
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 80
    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v15, v2}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 81
    const/4 v2, 0x2

    invoke-virtual {v15, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 82
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 92
    new-instance v2, Lcom/julysystems/appx/AppXWebView$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/julysystems/appx/AppXWebView$1;-><init>(Lcom/julysystems/appx/AppXWebView;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/julysystems/appx/AppXWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 105
    new-instance v19, Lcom/julysystems/appx/AppXWebView$AppXWebViewClient;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/julysystems/appx/AppXWebView$AppXWebViewClient;-><init>(Lcom/julysystems/appx/AppXWebView;)V

    .line 106
    .local v19, "webViewClient":Lcom/julysystems/appx/AppXWebView$AppXWebViewClient;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 107
    const-string v2, "url"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 108
    .local v21, "webViewUrl":Ljava/lang/String;
    const-string v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXWebView;->loadUrl(Ljava/lang/String;)V

    .line 148
    .end local v15    # "settings":Landroid/webkit/WebSettings;
    .end local v16    # "ua":Ljava/lang/StringBuilder;
    .end local v19    # "webViewClient":Lcom/julysystems/appx/AppXWebView$AppXWebViewClient;
    .end local v21    # "webViewUrl":Ljava/lang/String;
    :goto_0
    return-void

    .line 111
    .restart local v15    # "settings":Landroid/webkit/WebSettings;
    .restart local v16    # "ua":Ljava/lang/StringBuilder;
    .restart local v19    # "webViewClient":Lcom/julysystems/appx/AppXWebView$AppXWebViewClient;
    .restart local v21    # "webViewUrl":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/julysystems/appx/AppXPageData;->getDoc()Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v14

    .line 112
    .local v14, "pageElement":Lorg/w3c/dom/Element;
    const-string v2, "view"

    invoke-static {v14, v2}, Lcom/julysystems/appx/AppXXMLUtils;->getChildElements(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 113
    .local v13, "nodeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    const/4 v10, 0x0

    .line 114
    .local v10, "headerElement":Lorg/w3c/dom/Element;
    const/4 v9, 0x0

    .line 115
    .local v9, "footerElement":Lorg/w3c/dom/Element;
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 123
    invoke-static {v10}, Lcom/julysystems/appx/AppXXMLUtils;->getNodeText(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v12

    .line 124
    .local v12, "htmlHeader":Ljava/lang/String;
    invoke-static {v9}, Lcom/julysystems/appx/AppXXMLUtils;->getNodeText(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    .line 125
    .local v11, "htmlFooter":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/julysystems/appx/AppXXMLUtils;->getNodeText(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v20

    .line 127
    .local v20, "webViewContent":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<html>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</html>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, "content":Ljava/lang/String;
    const/16 v2, 0x82

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/julysystems/appx/AppXWebView;->requestFocus(I)Z

    .line 129
    new-instance v2, Lcom/julysystems/appx/AppXWebView$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/julysystems/appx/AppXWebView$2;-><init>(Lcom/julysystems/appx/AppXWebView;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/julysystems/appx/AppXWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 143
    sget-object v3, Lcom/julysystems/appx/AppXConstants;->baseUrl:Ljava/lang/String;

    const-string v5, "text/html"

    const-string v6, "utf-8"

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/julysystems/appx/AppXWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    .end local v4    # "content":Ljava/lang/String;
    .end local v9    # "footerElement":Lorg/w3c/dom/Element;
    .end local v10    # "headerElement":Lorg/w3c/dom/Element;
    .end local v11    # "htmlFooter":Ljava/lang/String;
    .end local v12    # "htmlHeader":Ljava/lang/String;
    .end local v13    # "nodeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    .end local v14    # "pageElement":Lorg/w3c/dom/Element;
    .end local v15    # "settings":Landroid/webkit/WebSettings;
    .end local v16    # "ua":Ljava/lang/StringBuilder;
    .end local v19    # "webViewClient":Lcom/julysystems/appx/AppXWebView$AppXWebViewClient;
    .end local v20    # "webViewContent":Ljava/lang/String;
    .end local v21    # "webViewUrl":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 146
    .local v8, "ex":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 115
    .end local v8    # "ex":Ljava/lang/Exception;
    .restart local v9    # "footerElement":Lorg/w3c/dom/Element;
    .restart local v10    # "headerElement":Lorg/w3c/dom/Element;
    .restart local v13    # "nodeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    .restart local v14    # "pageElement":Lorg/w3c/dom/Element;
    .restart local v15    # "settings":Landroid/webkit/WebSettings;
    .restart local v16    # "ua":Ljava/lang/StringBuilder;
    .restart local v19    # "webViewClient":Lcom/julysystems/appx/AppXWebView$AppXWebViewClient;
    .restart local v21    # "webViewUrl":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/w3c/dom/Element;

    .line 116
    .local v18, "viewNode":Lorg/w3c/dom/Element;
    const-string v3, "name"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 117
    .local v17, "viewJName":Ljava/lang/String;
    const-string v3, "html_header"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 118
    move-object/from16 v10, v18

    .line 119
    goto :goto_1

    :cond_3
    const-string v3, "html_footer"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 120
    move-object/from16 v9, v18

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/julysystems/appx/AppXWebView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/julysystems/appx/AppXWebView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/julysystems/appx/AppXWebView;)Lcom/julysystems/appx/AppXViewUpdateListner;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/julysystems/appx/AppXWebView;->appxView:Lcom/julysystems/appx/AppXViewUpdateListner;

    return-object v0
.end method

.method private addInlineLoader()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/julysystems/appx/AppXWebView;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXWebView;->createInlineLoader(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/julysystems/appx/AppXWebView;->progreesBar:Landroid/widget/ProgressBar;

    .line 170
    iget-object v0, p0, Lcom/julysystems/appx/AppXWebView;->progreesBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXWebView;->addView(Landroid/view/View;)V

    .line 171
    iget-object v0, p0, Lcom/julysystems/appx/AppXWebView;->progreesBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 172
    return-void
.end method

.method public static setOverLayUpdateListener(Lcom/julysystems/appx/AppXOverlayUpdateListner;)V
    .locals 1
    .param p0, "listener"    # Lcom/julysystems/appx/AppXOverlayUpdateListner;

    .prologue
    .line 362
    sget-object v0, Lcom/julysystems/appx/AppXWebView;->mAppXOverlayUpdateListner:Lcom/julysystems/appx/AppXOverlayUpdateListner;

    if-nez v0, :cond_0

    .line 363
    sput-object p0, Lcom/julysystems/appx/AppXWebView;->mAppXOverlayUpdateListner:Lcom/julysystems/appx/AppXOverlayUpdateListner;

    .line 365
    :cond_0
    return-void
.end method


# virtual methods
.method public createInlineLoader(Landroid/content/Context;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x1

    .line 159
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 160
    .local v0, "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 161
    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const v3, 0x1010079

    invoke-direct {v1, p1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/julysystems/appx/AppXWebView;->progreesBar:Landroid/widget/ProgressBar;

    .line 162
    iget-object v1, p0, Lcom/julysystems/appx/AppXWebView;->progreesBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setBackgroundColor(I)V

    .line 163
    iget-object v1, p0, Lcom/julysystems/appx/AppXWebView;->progreesBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iget-object v1, p0, Lcom/julysystems/appx/AppXWebView;->progreesBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 165
    iget-object v1, p0, Lcom/julysystems/appx/AppXWebView;->progreesBar:Landroid/widget/ProgressBar;

    return-object v1
.end method

.method public hideInlineLoader()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/julysystems/appx/AppXWebView;->progreesBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/julysystems/appx/AppXWebView;->progreesBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 179
    :cond_0
    return-void
.end method

.method public showInlineLoader()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 182
    iget-object v0, p0, Lcom/julysystems/appx/AppXWebView;->progreesBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/julysystems/appx/AppXWebView;->progreesBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 189
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-direct {p0}, Lcom/julysystems/appx/AppXWebView;->addInlineLoader()V

    .line 186
    iget-object v0, p0, Lcom/julysystems/appx/AppXWebView;->progreesBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
