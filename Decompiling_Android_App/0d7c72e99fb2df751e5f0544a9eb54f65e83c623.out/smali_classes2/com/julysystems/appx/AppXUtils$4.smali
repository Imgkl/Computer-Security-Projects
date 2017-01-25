.class Lcom/julysystems/appx/AppXUtils$4;
.super Ljava/lang/Object;
.source "AppXUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/julysystems/appx/AppXUtils;->showFormDialog(Lcom/julysystems/appx/AppXDialog;)V
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
    iput-object p1, p0, Lcom/julysystems/appx/AppXUtils$4;->val$jDialog:Lcom/julysystems/appx/AppXDialog;

    iput-object p2, p0, Lcom/julysystems/appx/AppXUtils$4;->val$items:[Ljava/lang/CharSequence;

    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 695
    iget-object v0, p0, Lcom/julysystems/appx/AppXUtils$4;->val$jDialog:Lcom/julysystems/appx/AppXDialog;

    iget-object v0, v0, Lcom/julysystems/appx/AppXDialog;->button:Landroid/widget/Button;

    iget-object v1, p0, Lcom/julysystems/appx/AppXUtils$4;->val$items:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 696
    iget-object v1, p0, Lcom/julysystems/appx/AppXUtils$4;->val$jDialog:Lcom/julysystems/appx/AppXDialog;

    iget-object v0, p0, Lcom/julysystems/appx/AppXUtils$4;->val$jDialog:Lcom/julysystems/appx/AppXDialog;

    iget-object v0, v0, Lcom/julysystems/appx/AppXDialog;->options:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/julysystems/appx/AppXUtils$4;->val$items:[Ljava/lang/CharSequence;

    aget-object v2, v2, p2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/julysystems/appx/AppXDialog;->value:Ljava/lang/String;

    .line 697
    return-void
.end method
