.class public final Lcom/google/common/primitives/Bytes;
.super Ljava/lang/Object;
.source "Bytes.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(B)I
    .locals 0
    .parameter

    .prologue
    .line 55
    return p0
.end method

.method private static a([BBII)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_1

    .line 93
    aget-byte v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 97
    :goto_1
    return v0

    .line 92
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static b([BBII)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_1

    .line 147
    aget-byte v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 151
    :goto_1
    return v0

    .line 146
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 151
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static synthetic c([BBII)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Bytes;->a([BBII)I

    move-result v0

    return v0
.end method

.method static synthetic d([BBII)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Bytes;->b([BBII)I

    move-result v0

    return v0
.end method
