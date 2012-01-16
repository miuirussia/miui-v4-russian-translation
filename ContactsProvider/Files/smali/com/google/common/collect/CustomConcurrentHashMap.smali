.class final Lcom/google/common/collect/CustomConcurrentHashMap;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Q(I)I
    .locals 3
    .parameter

    .prologue
    .line 527
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr v0, p0

    .line 528
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 529
    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    .line 530
    ushr-int/lit8 v1, v0, 0x6

    xor-int/2addr v0, v1

    .line 531
    shl-int/lit8 v1, v0, 0x2

    shl-int/lit8 v2, v0, 0xe

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 532
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    return v0
.end method

.method static synthetic R(I)I
    .locals 1
    .parameter

    .prologue
    .line 130
    invoke-static {p0}, Lcom/google/common/collect/CustomConcurrentHashMap;->Q(I)I

    move-result v0

    return v0
.end method
