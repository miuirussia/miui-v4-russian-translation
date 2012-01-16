.class Lcom/google/common/collect/MapMaker$StrategyImpl$Fields;
.super Ljava/lang/Object;
.source "MapMaker.java"


# static fields
.field static final B:Ljava/lang/reflect/Field;

.field static final C:Ljava/lang/reflect/Field;

.field static final D:Ljava/lang/reflect/Field;

.field static final E:Ljava/lang/reflect/Field;

.field static final F:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 725
    const-string v0, "keyStrength"

    invoke-static {v0}, Lcom/google/common/collect/MapMaker$StrategyImpl$Fields;->b(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/MapMaker$StrategyImpl$Fields;->B:Ljava/lang/reflect/Field;

    .line 726
    const-string v0, "valueStrength"

    invoke-static {v0}, Lcom/google/common/collect/MapMaker$StrategyImpl$Fields;->b(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/MapMaker$StrategyImpl$Fields;->C:Ljava/lang/reflect/Field;

    .line 727
    const-string v0, "expirationNanos"

    invoke-static {v0}, Lcom/google/common/collect/MapMaker$StrategyImpl$Fields;->b(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/MapMaker$StrategyImpl$Fields;->D:Ljava/lang/reflect/Field;

    .line 728
    const-string v0, "internals"

    invoke-static {v0}, Lcom/google/common/collect/MapMaker$StrategyImpl$Fields;->b(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/MapMaker$StrategyImpl$Fields;->E:Ljava/lang/reflect/Field;

    .line 729
    const-string v0, "map"

    invoke-static {v0}, Lcom/google/common/collect/MapMaker$StrategyImpl$Fields;->b(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/MapMaker$StrategyImpl$Fields;->F:Ljava/lang/reflect/Field;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 724
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static b(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .parameter

    .prologue
    .line 733
    :try_start_0
    const-class v0, Lcom/google/common/collect/MapMaker$StrategyImpl;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 734
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    return-object v0

    .line 736
    :catch_0
    move-exception v0

    .line 737
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
