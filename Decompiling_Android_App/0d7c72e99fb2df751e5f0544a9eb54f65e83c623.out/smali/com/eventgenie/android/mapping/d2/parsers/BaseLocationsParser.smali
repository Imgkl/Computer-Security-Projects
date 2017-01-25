.class abstract Lcom/eventgenie/android/mapping/d2/parsers/BaseLocationsParser;
.super Ljava/lang/Object;
.source "BaseLocationsParser.java"

# interfaces
.implements Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/InterfaceMapItem;


# static fields
.field private static final PERIOD:Ljava/lang/String; = "."

.field private static final SPACE:Ljava/lang/String; = " "

.field private static final TAB:Ljava/lang/String; = "\t"

.field protected static final UNPRINTABLE_CHAR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eventgenie/android/mapping/d2/parsers/BaseLocationsParser;->UNPRINTABLE_CHAR:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected formatLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 71
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 72
    :cond_0
    const-string v0, ""

    .line 76
    :goto_0
    return-object v0

    .line 73
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 74
    sget-object v0, Lcom/eventgenie/android/mapping/d2/parsers/BaseLocationsParser;->UNPRINTABLE_CHAR:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_2
    const-string v0, "\t"

    const-string v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getMapItemType(IILjava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "version"    # I
    .param p2, "type"    # I
    .param p3, "shapeId"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;

    .prologue
    .line 42
    const/4 v0, -0x1

    .line 44
    .local v0, "res":I
    if-lez p1, :cond_0

    .line 45
    move v0, p2

    .line 67
    :goto_0
    return v0

    .line 47
    :cond_0
    const-string v1, "ANNOT_"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 49
    const-string/jumbo v1, "{ANNOT-SHP}"

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    const/4 v0, 0x2

    goto :goto_0

    .line 52
    :cond_1
    const-string/jumbo v1, "{ANNOT-IMG}"

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    const/4 v0, 0x3

    goto :goto_0

    .line 55
    :cond_2
    const-string/jumbo v1, "{ANNOT-TEXT}"

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 56
    const/4 v0, 0x1

    goto :goto_0

    .line 58
    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    .line 62
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
