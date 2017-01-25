.class public Lcom/genie_connect/android/net/container/NetworkResultAuth;
.super Lcom/genie_connect/common/net/container/NetworkResult;
.source "NetworkResultAuth.java"


# instance fields
.field private mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;


# direct methods
.method public constructor <init>(Lcom/genie_connect/common/net/utils/HttpAction;)V
    .locals 0
    .param p1, "action"    # Lcom/genie_connect/common/net/utils/HttpAction;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/genie_connect/common/net/container/NetworkResult;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getVisitor()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/genie_connect/android/net/container/NetworkResultAuth;->mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    return-object v0
.end method

.method public setVisitor(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;)V
    .locals 0
    .param p1, "obj"    # Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/genie_connect/android/net/container/NetworkResultAuth;->mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkResultAuth [mVisitor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/NetworkResultAuth;->mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
