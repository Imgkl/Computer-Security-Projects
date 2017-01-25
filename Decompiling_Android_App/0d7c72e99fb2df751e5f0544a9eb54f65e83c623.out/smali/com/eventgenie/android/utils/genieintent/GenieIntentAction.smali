.class public final enum Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;
.super Ljava/lang/Enum;
.source "GenieIntentAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

.field public static final enum BOOKMARK:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

.field public static final enum FAVS_ADD:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

.field public static final enum FAVS_REMOVE:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

.field public static final enum HTTP:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

.field public static final enum UNKNOWN:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

.field public static final enum UN_BOOKMARK:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

.field public static final enum VIEW:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;


# instance fields
.field private final mAction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 35
    new-instance v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    const-string v1, "VIEW"

    const-string/jumbo v2, "view"

    invoke-direct {v0, v1, v4, v2}, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;->VIEW:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    .line 36
    new-instance v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    const-string v1, "FAVS_ADD"

    const-string v2, "addtofavourites"

    invoke-direct {v0, v1, v5, v2}, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;->FAVS_ADD:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    .line 37
    new-instance v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    const-string v1, "FAVS_REMOVE"

    const-string v2, "removefromfavourites"

    invoke-direct {v0, v1, v6, v2}, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;->FAVS_REMOVE:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    .line 38
    new-instance v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    const-string v1, "BOOKMARK"

    const-string v2, "bookmark"

    invoke-direct {v0, v1, v7, v2}, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;->BOOKMARK:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    .line 39
    new-instance v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    const-string v1, "UN_BOOKMARK"

    const-string/jumbo v2, "unbookmark"

    invoke-direct {v0, v1, v8, v2}, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;->UN_BOOKMARK:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    .line 40
    new-instance v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    const-string v1, "HTTP"

    const/4 v2, 0x5

    const-string v3, "http"

    invoke-direct {v0, v1, v2, v3}, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;->HTTP:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    .line 41
    new-instance v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x6

    const-string/jumbo v3, "unknown"

    invoke-direct {v0, v1, v2, v3}, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;->UNKNOWN:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    .line 34
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    sget-object v1, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;->VIEW:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;->FAVS_ADD:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;->FAVS_REMOVE:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;->BOOKMARK:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    aput-object v1, v0, v7

    sget-object v1, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;->UN_BOOKMARK:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;->HTTP:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;->UNKNOWN:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;->$VALUES:[Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-object p3, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;->mAction:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;
    .locals 6
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 51
    if-eqz p0, :cond_1

    .line 52
    invoke-static {}, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;->values()[Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    move-result-object v0

    .local v0, "arr$":[Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 53
    .local v1, "b":Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;
    invoke-virtual {v1}, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 60
    .end local v0    # "arr$":[Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;
    .end local v1    # "b":Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :goto_1
    return-object v1

    .line 52
    .restart local v0    # "arr$":[Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;
    .restart local v1    # "b":Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    .end local v0    # "arr$":[Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;
    .end local v1    # "b":Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ GENIEINTENTACTION: No action called \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 60
    sget-object v1, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;->UNKNOWN:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    return-object v0
.end method

.method public static values()[Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;->$VALUES:[Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    invoke-virtual {v0}, [Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;->mAction:Ljava/lang/String;

    return-object v0
.end method
