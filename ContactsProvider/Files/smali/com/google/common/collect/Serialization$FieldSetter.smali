.class final Lcom/google/common/collect/Serialization$FieldSetter;
.super Ljava/lang/Object;
.source "Serialization.java"


# instance fields
.field private final er:Ljava/lang/reflect/Field;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 1
    .parameter

    .prologue
    .line 226
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Lcom/google/common/collect/Serialization$FieldSetter;->er:Ljava/lang/reflect/Field;

    .line 228
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 229
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Field;Lcom/google/common/collect/Serialization$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/google/common/collect/Serialization$FieldSetter;-><init>(Ljava/lang/reflect/Field;)V

    return-void
.end method


# virtual methods
.method set(Ljava/lang/Object;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/Serialization$FieldSetter;->er:Ljava/lang/reflect/Field;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/Serialization$FieldSetter;->er:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
