.class final Lorg/apache/ignite/startup/cmdline/AboutDialog$2;
.super Ljava/lang/Object;
.source "AboutDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/startup/cmdline/AboutDialog;->centerShow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appName:Ljava/lang/String;

.field final synthetic val$bannerSpec:Ljava/lang/String;

.field final synthetic val$copyright:Ljava/lang/String;

.field final synthetic val$release:Ljava/util/Date;

.field final synthetic val$ver:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog$2;->val$appName:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog$2;->val$bannerSpec:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog$2;->val$ver:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog$2;->val$release:Ljava/util/Date;

    iput-object p5, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog$2;->val$copyright:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 314
    # getter for: Lorg/apache/ignite/startup/cmdline/AboutDialog;->aboutDlg:Lorg/apache/ignite/startup/cmdline/AboutDialog;
    invoke-static {}, Lorg/apache/ignite/startup/cmdline/AboutDialog;->access$000()Lorg/apache/ignite/startup/cmdline/AboutDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 316
    :try_start_0
    new-instance v0, Lorg/apache/ignite/startup/cmdline/AboutDialog;

    iget-object v1, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog$2;->val$appName:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog$2;->val$bannerSpec:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog$2;->val$ver:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog$2;->val$release:Ljava/util/Date;

    iget-object v5, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog$2;->val$copyright:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/startup/cmdline/AboutDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    # setter for: Lorg/apache/ignite/startup/cmdline/AboutDialog;->aboutDlg:Lorg/apache/ignite/startup/cmdline/AboutDialog;
    invoke-static {v0}, Lorg/apache/ignite/startup/cmdline/AboutDialog;->access$002(Lorg/apache/ignite/startup/cmdline/AboutDialog;)Lorg/apache/ignite/startup/cmdline/AboutDialog;

    .line 318
    # getter for: Lorg/apache/ignite/startup/cmdline/AboutDialog;->aboutDlg:Lorg/apache/ignite/startup/cmdline/AboutDialog;
    invoke-static {}, Lorg/apache/ignite/startup/cmdline/AboutDialog;->access$000()Lorg/apache/ignite/startup/cmdline/AboutDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/ignite/startup/cmdline/AboutDialog;->setLocationRelativeTo(Ljava/awt/Component;)V

    .line 319
    # getter for: Lorg/apache/ignite/startup/cmdline/AboutDialog;->aboutDlg:Lorg/apache/ignite/startup/cmdline/AboutDialog;
    invoke-static {}, Lorg/apache/ignite/startup/cmdline/AboutDialog;->access$000()Lorg/apache/ignite/startup/cmdline/AboutDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/startup/cmdline/AboutDialog;->setVisible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    # setter for: Lorg/apache/ignite/startup/cmdline/AboutDialog;->aboutDlg:Lorg/apache/ignite/startup/cmdline/AboutDialog;
    invoke-static {v6}, Lorg/apache/ignite/startup/cmdline/AboutDialog;->access$002(Lorg/apache/ignite/startup/cmdline/AboutDialog;)Lorg/apache/ignite/startup/cmdline/AboutDialog;

    .line 329
    :goto_0
    return-void

    .line 322
    :catchall_0
    move-exception v0

    # setter for: Lorg/apache/ignite/startup/cmdline/AboutDialog;->aboutDlg:Lorg/apache/ignite/startup/cmdline/AboutDialog;
    invoke-static {v6}, Lorg/apache/ignite/startup/cmdline/AboutDialog;->access$002(Lorg/apache/ignite/startup/cmdline/AboutDialog;)Lorg/apache/ignite/startup/cmdline/AboutDialog;

    throw v0

    .line 326
    :cond_0
    # getter for: Lorg/apache/ignite/startup/cmdline/AboutDialog;->aboutDlg:Lorg/apache/ignite/startup/cmdline/AboutDialog;
    invoke-static {}, Lorg/apache/ignite/startup/cmdline/AboutDialog;->access$000()Lorg/apache/ignite/startup/cmdline/AboutDialog;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/apache/ignite/startup/cmdline/AboutDialog;->setLocationRelativeTo(Ljava/awt/Component;)V

    .line 327
    # getter for: Lorg/apache/ignite/startup/cmdline/AboutDialog;->aboutDlg:Lorg/apache/ignite/startup/cmdline/AboutDialog;
    invoke-static {}, Lorg/apache/ignite/startup/cmdline/AboutDialog;->access$000()Lorg/apache/ignite/startup/cmdline/AboutDialog;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/startup/cmdline/AboutDialog;->toFront()V

    goto :goto_0
.end method
