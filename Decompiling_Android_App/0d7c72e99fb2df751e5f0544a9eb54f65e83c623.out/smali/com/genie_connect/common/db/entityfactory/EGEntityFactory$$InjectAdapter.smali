.class public final Lcom/genie_connect/common/db/entityfactory/EGEntityFactory$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "EGEntityFactory$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 18
    const-string v0, "com.genie_connect.common.db.entityfactory.EGEntityFactory"

    const-string v1, "members/com.genie_connect.common.db.entityfactory.EGEntityFactory"

    const/4 v2, 0x0

    const-class v3, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 19
    return-void
.end method


# virtual methods
.method public get()Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;

    invoke-direct {v0}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;-><init>()V

    .line 28
    .local v0, "result":Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory$$InjectAdapter;->get()Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;

    move-result-object v0

    return-object v0
.end method
