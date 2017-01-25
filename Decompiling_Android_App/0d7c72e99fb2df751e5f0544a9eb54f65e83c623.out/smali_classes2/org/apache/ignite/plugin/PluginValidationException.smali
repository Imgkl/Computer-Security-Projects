.class public Lorg/apache/ignite/plugin/PluginValidationException;
.super Lorg/apache/ignite/IgniteException;
.source "PluginValidationException.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private nodeId:Ljava/util/UUID;

.field private rmtMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "rmtMsg"    # Ljava/lang/String;
    .param p3, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    .line 50
    iput-object p3, p0, Lorg/apache/ignite/plugin/PluginValidationException;->nodeId:Ljava/util/UUID;

    .line 51
    iput-object p2, p0, Lorg/apache/ignite/plugin/PluginValidationException;->rmtMsg:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public nodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/plugin/PluginValidationException;->nodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public remoteMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/ignite/plugin/PluginValidationException;->rmtMsg:Ljava/lang/String;

    return-object v0
.end method
