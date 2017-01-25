.class public Lcom/eventgenie/android/utils/help/GsonHelper;
.super Ljava/lang/Object;
.source "GsonHelper.java"


# static fields
.field private static final dataversionEventListType:Ljava/lang/reflect/Type;

.field private static final prooferEventListType:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/eventgenie/android/utils/help/GsonHelper$1;

    invoke-direct {v0}, Lcom/eventgenie/android/utils/help/GsonHelper$1;-><init>()V

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/help/GsonHelper$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    sput-object v0, Lcom/eventgenie/android/utils/help/GsonHelper;->prooferEventListType:Ljava/lang/reflect/Type;

    .line 43
    new-instance v0, Lcom/eventgenie/android/utils/help/GsonHelper$2;

    invoke-direct {v0}, Lcom/eventgenie/android/utils/help/GsonHelper$2;-><init>()V

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/help/GsonHelper$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    sput-object v0, Lcom/eventgenie/android/utils/help/GsonHelper;->dataversionEventListType:Ljava/lang/reflect/Type;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static castObjectToListOf(Ljava/lang/Class;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/genie_connect/android/net/container/gson/BaseGsonModel;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/genie_connect/android/net/container/gson/BaseGsonModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/genie_connect/android/net/container/gson/BaseGsonModel;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "className":Ljava/lang/String;
    const-class v1, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    check-cast p1, Ljava/util/List;

    .line 53
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p1

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static getListTypeForClass(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/genie_connect/android/net/container/gson/BaseGsonModel;",
            ">;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/genie_connect/android/net/container/gson/BaseGsonModel;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "className":Ljava/lang/String;
    const-class v1, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    sget-object v1, Lcom/eventgenie/android/utils/help/GsonHelper;->prooferEventListType:Ljava/lang/reflect/Type;

    .line 66
    :goto_0
    return-object v1

    .line 62
    :cond_0
    const-class v1, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    sget-object v1, Lcom/eventgenie/android/utils/help/GsonHelper;->dataversionEventListType:Ljava/lang/reflect/Type;

    goto :goto_0

    .line 66
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
