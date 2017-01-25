.class public final enum Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;
.super Ljava/lang/Enum;
.source "Flickr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/utils/social/flickr/Flickr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhotoSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;

.field public static final enum LARGE:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;

.field public static final enum MEDIUM:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;

.field public static final enum SMALL:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;

.field public static final enum SMALL_SQUARE:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;

.field public static final enum THUMBNAIL:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;


# instance fields
.field private final mLongSide:I

.field private final mSize:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1155
    new-instance v0, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;

    const-string v1, "SMALL_SQUARE"

    const-string v2, "_s"

    const/16 v3, 0x4b

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;->SMALL_SQUARE:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;

    .line 1159
    new-instance v0, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;

    const-string v1, "THUMBNAIL"

    const-string v2, "_t"

    const/16 v3, 0x64

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;->THUMBNAIL:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;

    .line 1163
    new-instance v0, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;

    const-string v1, "SMALL"

    const-string v2, "_m"

    const/16 v3, 0xf0

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;->SMALL:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;

    .line 1167
    new-instance v0, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;

    const-string v1, "MEDIUM"

    const-string v2, ""

    const/16 v3, 0x1f4

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;->MEDIUM:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;

    .line 1171
    new-instance v0, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;

    const-string v1, "LARGE"

    const-string v2, "_b"

    const/16 v3, 0x400

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;->LARGE:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;

    .line 1151
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;

    sget-object v1, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;->SMALL_SQUARE:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;->THUMBNAIL:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;

    aput-object v1, v0, v5

    sget-object v1, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;->SMALL:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;

    aput-object v1, v0, v6

    sget-object v1, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;->MEDIUM:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;

    aput-object v1, v0, v7

    sget-object v1, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;->LARGE:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;

    aput-object v1, v0, v8

    sput-object v0, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;->$VALUES:[Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "size"    # Ljava/lang/String;
    .param p4, "longSide"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1176
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1177
    iput-object p3, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;->mSize:Ljava/lang/String;

    .line 1178
    iput p4, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;->mLongSide:I

    .line 1179
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1151
    const-class v0, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;

    return-object v0
.end method

.method public static values()[Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;
    .locals 1

    .prologue
    .line 1151
    sget-object v0, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;->$VALUES:[Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;

    invoke-virtual {v0}, [Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;

    return-object v0
.end method


# virtual methods
.method longSide()I
    .locals 1

    .prologue
    .line 1187
    iget v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;->mLongSide:I

    return v0
.end method

.method size()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;->mSize:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", longSide="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;->mLongSide:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
