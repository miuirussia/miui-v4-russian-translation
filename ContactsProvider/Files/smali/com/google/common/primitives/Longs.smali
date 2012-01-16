.class public final Lcom/google/common/primitives/Longs;
.super Ljava/lang/Object;
.source "Longs.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)I
    .locals 2
    .parameter

    .prologue
    .line 61
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method private static a([JJII)I
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

    cmp-long v1, v1, p1

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

.method private static b([JJII)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    add-int/lit8 v0, p4, -0x1

    :goto_0
    if-lt v0, p3, :cond_1

    .line 166
    aget-wide v1, p0, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 170
    :goto_1
    return v0

    .line 165
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 170
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static synthetic c([JJII)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Longs;->a([JJII)I

    move-result v0

    return v0
.end method

.method public static compare(JJ)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 74
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p0, p2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d([JJII)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Longs;->b([JJII)I

    move-result v0

    return v0
.end method
