.class public final enum Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;
.super Ljava/lang/Enum;
.source "ActivityStreamPost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/common/db/model/ActivityStreamPost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

.field public static final enum FACEBOOK:Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

.field public static final enum FLICKR:Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

.field public static final enum GOOGLEPLUS:Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

.field public static final enum INSTAGRAM:Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

.field public static final enum LINKEDIN:Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

.field public static final enum RSS:Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

.field public static final enum TWITTER:Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

.field public static final enum YOUTUBE:Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 103
    new-instance v0, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    const-string v1, "FACEBOOK"

    const-string v2, "facebook"

    invoke-direct {v0, v1, v4, v2}, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->FACEBOOK:Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    .line 104
    new-instance v0, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    const-string v1, "FLICKR"

    const-string v2, "flickr"

    invoke-direct {v0, v1, v5, v2}, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->FLICKR:Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    .line 105
    new-instance v0, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    const-string v1, "LINKEDIN"

    const-string v2, "linkedin"

    invoke-direct {v0, v1, v6, v2}, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->LINKEDIN:Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    .line 106
    new-instance v0, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    const-string v1, "RSS"

    const-string v2, "rss"

    invoke-direct {v0, v1, v7, v2}, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->RSS:Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    .line 107
    new-instance v0, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    const-string v1, "YOUTUBE"

    const-string/jumbo v2, "youtube"

    invoke-direct {v0, v1, v8, v2}, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->YOUTUBE:Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    .line 108
    new-instance v0, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    const-string v1, "GOOGLEPLUS"

    const/4 v2, 0x5

    const-string v3, "googleplus"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->GOOGLEPLUS:Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    .line 109
    new-instance v0, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    const-string v1, "INSTAGRAM"

    const/4 v2, 0x6

    const-string v3, "instagram"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->INSTAGRAM:Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    .line 110
    new-instance v0, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    const-string v1, "TWITTER"

    const/4 v2, 0x7

    const-string/jumbo v3, "twitter"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->TWITTER:Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    .line 102
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    sget-object v1, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->FACEBOOK:Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->FLICKR:Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->LINKEDIN:Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->RSS:Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->YOUTUBE:Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->GOOGLEPLUS:Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->INSTAGRAM:Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->TWITTER:Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->$VALUES:[Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "postType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 114
    iput-object p3, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->type:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 102
    const-class v0, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    return-object v0
.end method

.method public static values()[Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->$VALUES:[Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    invoke-virtual {v0}, [Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->type:Ljava/lang/String;

    return-object v0
.end method
