.class public final enum Lcom/genie_connect/common/net/utils/HttpAction;
.super Ljava/lang/Enum;
.source "HttpAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/genie_connect/common/net/utils/HttpAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genie_connect/common/net/utils/HttpAction;

.field public static final enum DELETE:Lcom/genie_connect/common/net/utils/HttpAction;

.field public static final enum GET:Lcom/genie_connect/common/net/utils/HttpAction;

.field public static final enum HEAD:Lcom/genie_connect/common/net/utils/HttpAction;

.field public static final enum POST:Lcom/genie_connect/common/net/utils/HttpAction;

.field public static final enum PUT:Lcom/genie_connect/common/net/utils/HttpAction;

.field public static final enum UNKNOWN:Lcom/genie_connect/common/net/utils/HttpAction;


# instance fields
.field private final action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6
    new-instance v0, Lcom/genie_connect/common/net/utils/HttpAction;

    const-string v1, "GET"

    const-string v2, "GET"

    invoke-direct {v0, v1, v4, v2}, Lcom/genie_connect/common/net/utils/HttpAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/common/net/utils/HttpAction;->GET:Lcom/genie_connect/common/net/utils/HttpAction;

    .line 7
    new-instance v0, Lcom/genie_connect/common/net/utils/HttpAction;

    const-string v1, "POST"

    const-string v2, "POST"

    invoke-direct {v0, v1, v5, v2}, Lcom/genie_connect/common/net/utils/HttpAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/common/net/utils/HttpAction;->POST:Lcom/genie_connect/common/net/utils/HttpAction;

    .line 8
    new-instance v0, Lcom/genie_connect/common/net/utils/HttpAction;

    const-string v1, "HEAD"

    const-string v2, "HEAD"

    invoke-direct {v0, v1, v6, v2}, Lcom/genie_connect/common/net/utils/HttpAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/common/net/utils/HttpAction;->HEAD:Lcom/genie_connect/common/net/utils/HttpAction;

    .line 9
    new-instance v0, Lcom/genie_connect/common/net/utils/HttpAction;

    const-string v1, "DELETE"

    const-string v2, "DELETE"

    invoke-direct {v0, v1, v7, v2}, Lcom/genie_connect/common/net/utils/HttpAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/common/net/utils/HttpAction;->DELETE:Lcom/genie_connect/common/net/utils/HttpAction;

    .line 10
    new-instance v0, Lcom/genie_connect/common/net/utils/HttpAction;

    const-string v1, "PUT"

    const-string v2, "PUT"

    invoke-direct {v0, v1, v8, v2}, Lcom/genie_connect/common/net/utils/HttpAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/common/net/utils/HttpAction;->PUT:Lcom/genie_connect/common/net/utils/HttpAction;

    .line 11
    new-instance v0, Lcom/genie_connect/common/net/utils/HttpAction;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/common/net/utils/HttpAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/common/net/utils/HttpAction;->UNKNOWN:Lcom/genie_connect/common/net/utils/HttpAction;

    .line 5
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/genie_connect/common/net/utils/HttpAction;

    sget-object v1, Lcom/genie_connect/common/net/utils/HttpAction;->GET:Lcom/genie_connect/common/net/utils/HttpAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/genie_connect/common/net/utils/HttpAction;->POST:Lcom/genie_connect/common/net/utils/HttpAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/genie_connect/common/net/utils/HttpAction;->HEAD:Lcom/genie_connect/common/net/utils/HttpAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/genie_connect/common/net/utils/HttpAction;->DELETE:Lcom/genie_connect/common/net/utils/HttpAction;

    aput-object v1, v0, v7

    sget-object v1, Lcom/genie_connect/common/net/utils/HttpAction;->PUT:Lcom/genie_connect/common/net/utils/HttpAction;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/genie_connect/common/net/utils/HttpAction;->UNKNOWN:Lcom/genie_connect/common/net/utils/HttpAction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/genie_connect/common/net/utils/HttpAction;->$VALUES:[Lcom/genie_connect/common/net/utils/HttpAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/genie_connect/common/net/utils/HttpAction;->action:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/genie_connect/common/net/utils/HttpAction;
    .locals 6
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 24
    if-eqz p0, :cond_1

    .line 25
    invoke-static {}, Lcom/genie_connect/common/net/utils/HttpAction;->values()[Lcom/genie_connect/common/net/utils/HttpAction;

    move-result-object v0

    .local v0, "arr$":[Lcom/genie_connect/common/net/utils/HttpAction;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 26
    .local v1, "b":Lcom/genie_connect/common/net/utils/HttpAction;
    invoke-virtual {v1}, Lcom/genie_connect/common/net/utils/HttpAction;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 33
    .end local v0    # "arr$":[Lcom/genie_connect/common/net/utils/HttpAction;
    .end local v1    # "b":Lcom/genie_connect/common/net/utils/HttpAction;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :goto_1
    return-object v1

    .line 25
    .restart local v0    # "arr$":[Lcom/genie_connect/common/net/utils/HttpAction;
    .restart local v1    # "b":Lcom/genie_connect/common/net/utils/HttpAction;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 32
    .end local v0    # "arr$":[Lcom/genie_connect/common/net/utils/HttpAction;
    .end local v1    # "b":Lcom/genie_connect/common/net/utils/HttpAction;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ HTTP_ACTION: No HTTP_ACTION called \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/genie_connect/common/utils/CommonLog;->warn(Ljava/lang/String;)V

    .line 33
    sget-object v1, Lcom/genie_connect/common/net/utils/HttpAction;->UNKNOWN:Lcom/genie_connect/common/net/utils/HttpAction;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genie_connect/common/net/utils/HttpAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/genie_connect/common/net/utils/HttpAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/common/net/utils/HttpAction;

    return-object v0
.end method

.method public static values()[Lcom/genie_connect/common/net/utils/HttpAction;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/genie_connect/common/net/utils/HttpAction;->$VALUES:[Lcom/genie_connect/common/net/utils/HttpAction;

    invoke-virtual {v0}, [Lcom/genie_connect/common/net/utils/HttpAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genie_connect/common/net/utils/HttpAction;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/genie_connect/common/net/utils/HttpAction;->action:Ljava/lang/String;

    return-object v0
.end method
