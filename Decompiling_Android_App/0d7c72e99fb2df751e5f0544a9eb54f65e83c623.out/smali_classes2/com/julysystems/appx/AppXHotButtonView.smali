.class Lcom/julysystems/appx/AppXHotButtonView;
.super Landroid/widget/LinearLayout;
.source "AppXHotButtonView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 21
    .local v5, "nodeTextObj":Lorg/json/JSONObject;
    const-string v6, "NavigationURL"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 22
    .local v4, "linkUrl":Ljava/lang/String;
    const-string v6, "Images"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 23
    .local v1, "imageObj":Lorg/json/JSONObject;
    const-string v6, "image"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 24
    .local v3, "image_download_link":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 25
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 26
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 27
    .local v2, "imageView":Landroid/widget/ImageView;
    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Lcom/julysystems/appx/AppXUtils;->setImage(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 28
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 29
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v6}, Lcom/julysystems/appx/AppXHotButtonView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    invoke-virtual {p0, v2}, Lcom/julysystems/appx/AppXHotButtonView;->addView(Landroid/view/View;)V

    .line 33
    .end local v2    # "imageView":Landroid/widget/ImageView;
    :cond_0
    new-instance v6, Lcom/julysystems/appx/AppXHotButtonView$1;

    invoke-direct {v6, p0, v4}, Lcom/julysystems/appx/AppXHotButtonView$1;-><init>(Lcom/julysystems/appx/AppXHotButtonView;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/julysystems/appx/AppXHotButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v1    # "imageObj":Lorg/json/JSONObject;
    .end local v3    # "image_download_link":Ljava/lang/String;
    .end local v4    # "linkUrl":Ljava/lang/String;
    .end local v5    # "nodeTextObj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
