.class public final Lcom/google/common/primitives/Chars;
.super Ljava/lang/Object;
.source "Chars.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([CCII)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 143
    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_1

    .line 144
    aget-char v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 148
    :goto_1
    return v0

    .line 143
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static b([CCII)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_1

    .line 198
    aget-char v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 202
    :goto_1
    return v0

    .line 197
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 202
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static synthetic c([CCII)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Chars;->a([CCII)I

    move-result v0

    return v0
.end method

.method public static compare(CC)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 106
    sub-int v0, p0, p1

    return v0
.end method

.method public static d(C)I
    .locals 0
    .parameter

    .prologue
    .line 61
    return p0
.end method

.method static synthetic d([CCII)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Chars;->b([CCII)I

    move-result v0

    return v0
.end method
