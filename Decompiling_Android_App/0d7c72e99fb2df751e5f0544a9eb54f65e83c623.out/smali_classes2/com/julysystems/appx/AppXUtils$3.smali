.class Lcom/julysystems/appx/AppXUtils$3;
.super Ljava/lang/Object;
.source "AppXUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/julysystems/appx/AppXUtils;->showUrlDialog(Lcom/julysystems/appx/AppXDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$items:[Ljava/lang/CharSequence;

.field private final synthetic val$jDialog:Lcom/julysystems/appx/AppXDialog;


# direct methods
.method constructor <init>(Lcom/julysystems/appx/AppXDialog;[Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/julysystems/appx/AppXUtils$3;->val$jDialog:Lcom/julysystems/appx/AppXDialog;

    iput-object p2, p0, Lcom/julysystems/appx/AppXUtils$3;->val$items:[Ljava/lang/CharSequence;

    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 675
    iget-object v1, p0, Lcom/julysystems/appx/AppXUtils$3;->val$jDialog:Lcom/julysystems/appx/AppXDialog;

    iget-object v1, v1, Lcom/julysystems/appx/AppXDialog;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 676
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/julysystems/appx/AppXUtils$3;->val$jDialog:Lcom/julysystems/appx/AppXDialog;

    iget-object v2, v2, Lcom/julysystems/appx/AppXDialog;->url:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/julysystems/appx/AppXUtils$3;->val$jDialog:Lcom/julysystems/appx/AppXDialog;

    iget-object v1, v1, Lcom/julysystems/appx/AppXDialog;->options:Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lcom/julysystems/appx/AppXUtils$3;->val$items:[Ljava/lang/CharSequence;

    aget-object v3, v3, p2

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 681
    .local v0, "link":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lcom/julysystems/appx/AppXUtils;->loadUrl(Ljava/lang/String;)V

    .line 682
    return-void

    .line 678
    .end local v0    # "link":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/julysystems/appx/AppXUtils$3;->val$jDialog:Lcom/julysystems/appx/AppXDialog;

    iget-object v2, v2, Lcom/julysystems/appx/AppXDialog;->url:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/julysystems/appx/AppXUtils$3;->val$jDialog:Lcom/julysystems/appx/AppXDialog;

    iget-object v2, v2, Lcom/julysystems/appx/AppXDialog;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/julysystems/appx/AppXUtils$3;->val$jDialog:Lcom/julysystems/appx/AppXDialog;

    iget-object v1, v1, Lcom/julysystems/appx/AppXDialog;->options:Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lcom/julysystems/appx/AppXUtils$3;->val$items:[Ljava/lang/CharSequence;

    aget-object v3, v3, p2

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "link":Ljava/lang/String;
    goto :goto_0
.end method
