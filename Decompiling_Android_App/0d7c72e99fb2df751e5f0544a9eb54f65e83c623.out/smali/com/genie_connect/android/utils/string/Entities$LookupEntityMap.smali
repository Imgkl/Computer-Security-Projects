.class Lcom/genie_connect/android/utils/string/Entities$LookupEntityMap;
.super Lcom/genie_connect/android/utils/string/Entities$PrimitiveEntityMap;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/utils/string/Entities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LookupEntityMap"
.end annotation


# instance fields
.field private LOOKUP_TABLE_SIZE:I

.field private lookupTable:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 533
    invoke-direct {p0}, Lcom/genie_connect/android/utils/string/Entities$PrimitiveEntityMap;-><init>()V

    .line 536
    const/16 v0, 0x100

    iput v0, p0, Lcom/genie_connect/android/utils/string/Entities$LookupEntityMap;->LOOKUP_TABLE_SIZE:I

    return-void
.end method

.method private createLookupTable()V
    .locals 3

    .prologue
    .line 569
    iget v1, p0, Lcom/genie_connect/android/utils/string/Entities$LookupEntityMap;->LOOKUP_TABLE_SIZE:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/genie_connect/android/utils/string/Entities$LookupEntityMap;->lookupTable:[Ljava/lang/String;

    .line 570
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/genie_connect/android/utils/string/Entities$LookupEntityMap;->LOOKUP_TABLE_SIZE:I

    if-ge v0, v1, :cond_0

    .line 571
    iget-object v1, p0, Lcom/genie_connect/android/utils/string/Entities$LookupEntityMap;->lookupTable:[Ljava/lang/String;

    invoke-super {p0, v0}, Lcom/genie_connect/android/utils/string/Entities$PrimitiveEntityMap;->name(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 570
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 573
    :cond_0
    return-void
.end method

.method private lookupTable()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/genie_connect/android/utils/string/Entities$LookupEntityMap;->lookupTable:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 558
    invoke-direct {p0}, Lcom/genie_connect/android/utils/string/Entities$LookupEntityMap;->createLookupTable()V

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/utils/string/Entities$LookupEntityMap;->lookupTable:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public name(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 543
    iget v0, p0, Lcom/genie_connect/android/utils/string/Entities$LookupEntityMap;->LOOKUP_TABLE_SIZE:I

    if-ge p1, v0, :cond_0

    .line 544
    invoke-direct {p0}, Lcom/genie_connect/android/utils/string/Entities$LookupEntityMap;->lookupTable()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    .line 546
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/genie_connect/android/utils/string/Entities$PrimitiveEntityMap;->name(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
