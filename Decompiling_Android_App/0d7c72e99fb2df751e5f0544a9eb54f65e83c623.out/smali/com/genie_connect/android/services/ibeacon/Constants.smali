.class public Lcom/genie_connect/android/services/ibeacon/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final BEACON_DEVICE_EXTRA:Ljava/lang/String; = "BEACON_DEVICE_EXTRA"

.field public static final BEACON_FOUND:Ljava/lang/String; = "BEACON_FOUND"

.field public static final MUSEUM_ITEMS_JOIN_ITEMS_WITH_LOCATIONS:Ljava/lang/String; = "museum_item INNER JOIN artists ON author=name"

.field public static final MUSEUM_ITEM_AUTHOR:Ljava/lang/String; = "author"

.field public static final MUSEUM_ITEM_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final MUSEUM_ITEM_FULL_IMAGE:Ljava/lang/String; = "fullImage"

.field public static final MUSEUM_ITEM_ID:Ljava/lang/String; = "id"

.field public static final MUSEUM_ITEM_LINK:Ljava/lang/String; = "link"

.field public static final MUSEUM_ITEM_LOCATION:Ljava/lang/String; = "location"

.field public static final MUSEUM_ITEM_PAINTING_NAME:Ljava/lang/String; = "paintingname"

.field public static final MUSEUM_ITEM_SMALL_IMAGE:Ljava/lang/String; = "image"

.field public static final MUSEUM_ITEM_TABLE_NAME:Ljava/lang/String; = "museum_item"

.field public static final SQL_MUSEUM_ITEMS_TABLE_NAME:Ljava/lang/String; = "museum_item"

.field public static final SQL_SELECT:[Ljava/lang/String;

.field public static final SQL_SELECT_WITH_AUTHOR_DETAILS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 15
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "id as _id, id, paintingname, museum_item.description, author, image, location"

    aput-object v1, v0, v3

    sput-object v0, Lcom/genie_connect/android/services/ibeacon/Constants;->SQL_SELECT:[Ljava/lang/String;

    .line 25
    new-array v0, v2, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/genie_connect/android/services/ibeacon/Constants;->SQL_SELECT:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "link"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "fullImage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Lcom/genie_connect/android/services/ibeacon/Constants;->SQL_SELECT_WITH_AUTHOR_DETAILS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
