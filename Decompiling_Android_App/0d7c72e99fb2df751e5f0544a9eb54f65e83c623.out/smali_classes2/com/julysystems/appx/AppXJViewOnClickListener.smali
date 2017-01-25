.class Lcom/julysystems/appx/AppXJViewOnClickListener;
.super Ljava/lang/Object;
.source "AppXJViewOnClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/julysystems/appx/AppXJViewOnClickListener;->url:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/julysystems/appx/AppXJViewOnClickListener;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/julysystems/appx/AppXJViewOnClickListener;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/julysystems/appx/AppXUtils;->loadUrl(Ljava/lang/String;)V

    .line 18
    :cond_0
    return-void
.end method
