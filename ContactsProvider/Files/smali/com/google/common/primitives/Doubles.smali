.class public final Lcom/google/common/primitives/Doubles;
.super Ljava/lang/Object;
.source "Doubles.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(D)I
    .locals 1
    .parameter

    .prologue
    .line 54
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    return v0
.end method

.method private static a([DDII)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    move v0, p3

    :goto_0
    if-ge v0, p4, :cond_1

    .line 112
    aget-wide v1, p0, v0

    cmpl-double v1, v1, p1

    if-nez v1, :cond_0

    .line 116
    :goto_1
    return v0

    .line 111
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static b([DDII)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 169
    add-int/lit8 v0, p4, -0x1

    :goto_0
    if-lt v0, p3, :cond_1

    .line 170
    aget-wide v1, p0, v0

    cmpl-double v1, v1, p1

    if-nez v1, :cond_0

    .line 174
    :goto_1
    return v0

    .line 169
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 174
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static synthetic c([DDII)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Doubles;->a([DDII)I

    move-result v0

    return v0
.end method

.method public static compare(DD)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method static synthetic d([DDII)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Doubles;->b([DDII)I

    move-result v0

    return v0
.end method
