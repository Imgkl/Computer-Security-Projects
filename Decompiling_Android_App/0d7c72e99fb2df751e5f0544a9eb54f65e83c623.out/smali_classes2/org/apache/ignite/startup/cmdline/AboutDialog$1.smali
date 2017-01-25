.class Lorg/apache/ignite/startup/cmdline/AboutDialog$1;
.super Ljavax/swing/AbstractAction;
.source "AboutDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/startup/cmdline/AboutDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/startup/cmdline/AboutDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-class v0, Lorg/apache/ignite/startup/cmdline/AboutDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/startup/cmdline/AboutDialog$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/startup/cmdline/AboutDialog;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog$1;->this$0:Lorg/apache/ignite/startup/cmdline/AboutDialog;

    invoke-direct {p0, p2}, Ljavax/swing/AbstractAction;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .prologue
    .line 87
    sget-boolean v0, Lorg/apache/ignite/startup/cmdline/AboutDialog$1;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljavax/swing/SwingUtilities;->isEventDispatchThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog$1;->this$0:Lorg/apache/ignite/startup/cmdline/AboutDialog;

    invoke-virtual {v0}, Lorg/apache/ignite/startup/cmdline/AboutDialog;->dispose()V

    .line 90
    return-void
.end method
