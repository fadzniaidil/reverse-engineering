.class public final Lcom/squareup/picasso/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/Request$Builder;
    }
.end annotation


# static fields
.field private static final TOO_LONG_LOG:J


# instance fields
.field public final centerCrop:Z

.field public final centerInside:Z

.field public final config:Landroid/graphics/Bitmap$Config;

.field public final hasRotationPivot:Z

.field id:I

.field networkPolicy:I

.field public final onlyScaleDown:Z

.field public final priority:Lcom/squareup/picasso/Picasso$Priority;

.field public final resourceId:I

.field public final rotationDegrees:F

.field public final rotationPivotX:F

.field public final rotationPivotY:F

.field public final stableKey:Ljava/lang/String;

.field started:J

.field public final targetHeight:I

.field public final targetWidth:I

.field public final transformations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/picasso/Transformation;",
            ">;"
        }
    .end annotation
.end field

.field public final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/squareup/picasso/Request;->TOO_LONG_LOG:J

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;ILjava/lang/String;Ljava/util/List;IIZZZFFFZLandroid/graphics/Bitmap$Config;Lcom/squareup/picasso/Picasso$Priority;)V
    .locals 15
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "resourceId"    # I
    .param p3, "stableKey"    # Ljava/lang/String;
    .param p5, "targetWidth"    # I
    .param p6, "targetHeight"    # I
    .param p7, "centerCrop"    # Z
    .param p8, "centerInside"    # Z
    .param p9, "onlyScaleDown"    # Z
    .param p10, "rotationDegrees"    # F
    .param p11, "rotationPivotX"    # F
    .param p12, "rotationPivotY"    # F
    .param p13, "hasRotationPivot"    # Z
    .param p14, "config"    # Landroid/graphics/Bitmap$Config;
    .param p15, "priority"    # Lcom/squareup/picasso/Picasso$Priority;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/squareup/picasso/Transformation;",
            ">;IIZZZFFFZ",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/squareup/picasso/Picasso$Priority;",
            ")V"
        }
    .end annotation

    .line 90
    .local p4, "transformations":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/Transformation;>;"
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    .line 92
    move/from16 v2, p2

    iput v2, v0, Lcom/squareup/picasso/Request;->resourceId:I

    .line 93
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/squareup/picasso/Request;->stableKey:Ljava/lang/String;

    .line 94
    if-nez p4, :cond_0

    .line 95
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/squareup/picasso/Request;->transformations:Ljava/util/List;

    goto :goto_0

    .line 97
    :cond_0
    invoke-static/range {p4 .. p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/squareup/picasso/Request;->transformations:Ljava/util/List;

    .line 99
    :goto_0
    move/from16 v4, p5

    iput v4, v0, Lcom/squareup/picasso/Request;->targetWidth:I

    .line 100
    move/from16 v5, p6

    iput v5, v0, Lcom/squareup/picasso/Request;->targetHeight:I

    .line 101
    move/from16 v6, p7

    iput-boolean v6, v0, Lcom/squareup/picasso/Request;->centerCrop:Z

    .line 102
    move/from16 v7, p8

    iput-boolean v7, v0, Lcom/squareup/picasso/Request;->centerInside:Z

    .line 103
    move/from16 v8, p9

    iput-boolean v8, v0, Lcom/squareup/picasso/Request;->onlyScaleDown:Z

    .line 104
    move/from16 v9, p10

    iput v9, v0, Lcom/squareup/picasso/Request;->rotationDegrees:F

    .line 105
    move/from16 v10, p11

    iput v10, v0, Lcom/squareup/picasso/Request;->rotationPivotX:F

    .line 106
    move/from16 v11, p12

    iput v11, v0, Lcom/squareup/picasso/Request;->rotationPivotY:F

    .line 107
    move/from16 v12, p13

    iput-boolean v12, v0, Lcom/squareup/picasso/Request;->hasRotationPivot:Z

    .line 108
    move-object/from16 v13, p14

    iput-object v13, v0, Lcom/squareup/picasso/Request;->config:Landroid/graphics/Bitmap$Config;

    .line 109
    move-object/from16 v14, p15

    iput-object v14, v0, Lcom/squareup/picasso/Request;->priority:Lcom/squareup/picasso/Picasso$Priority;

    .line 110
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;ILjava/lang/String;Ljava/util/List;IIZZZFFFZLandroid/graphics/Bitmap$Config;Lcom/squareup/picasso/Picasso$Priority;Lcom/squareup/picasso/Request$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/Uri;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/util/List;
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # Z
    .param p8, "x7"    # Z
    .param p9, "x8"    # Z
    .param p10, "x9"    # F
    .param p11, "x10"    # F
    .param p12, "x11"    # F
    .param p13, "x12"    # Z
    .param p14, "x13"    # Landroid/graphics/Bitmap$Config;
    .param p15, "x14"    # Lcom/squareup/picasso/Picasso$Priority;
    .param p16, "x15"    # Lcom/squareup/picasso/Request$1;

    .line 28
    invoke-direct/range {p0 .. p15}, Lcom/squareup/picasso/Request;-><init>(Landroid/net/Uri;ILjava/lang/String;Ljava/util/List;IIZZZFFFZLandroid/graphics/Bitmap$Config;Lcom/squareup/picasso/Picasso$Priority;)V

    return-void
.end method


# virtual methods
.method public buildUpon()Lcom/squareup/picasso/Request$Builder;
    .locals 2

    .line 187
    new-instance v0, Lcom/squareup/picasso/Request$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/picasso/Request$Builder;-><init>(Lcom/squareup/picasso/Request;Lcom/squareup/picasso/Request$1;)V

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 167
    :cond_0
    iget v0, p0, Lcom/squareup/picasso/Request;->resourceId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasCustomTransformations()Z
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/squareup/picasso/Request;->transformations:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSize()Z
    .locals 1

    .line 171
    iget v0, p0, Lcom/squareup/picasso/Request;->targetWidth:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/squareup/picasso/Request;->targetHeight:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method logId()Ljava/lang/String;
    .locals 6

    .line 152
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/squareup/picasso/Request;->started:J

    sub-long/2addr v0, v2

    .line 153
    .local v0, "delta":J
    sget-wide v2, Lcom/squareup/picasso/Request;->TOO_LONG_LOG:J

    const/16 v4, 0x2b

    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/squareup/picasso/Request;->plainId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v3, 0x73

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 156
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/squareup/picasso/Request;->plainId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method needsMatrixTransform()Z
    .locals 2

    .line 179
    invoke-virtual {p0}, Lcom/squareup/picasso/Request;->hasSize()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/squareup/picasso/Request;->rotationDegrees:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method needsTransformation()Z
    .locals 1

    .line 175
    invoke-virtual {p0}, Lcom/squareup/picasso/Request;->needsMatrixTransform()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/squareup/picasso/Request;->hasCustomTransformations()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method plainId()Ljava/lang/String;
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[R"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/squareup/picasso/Request;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/squareup/picasso/Request;->resourceId:I

    if-lez v1, :cond_0

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    :goto_0
    iget-object v1, p0, Lcom/squareup/picasso/Request;->transformations:Ljava/util/List;

    const/16 v2, 0x20

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/squareup/picasso/Request;->transformations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/picasso/Transformation;

    .line 121
    .local v3, "transformation":Lcom/squareup/picasso/Transformation;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/squareup/picasso/Transformation;->key()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .end local v3    # "transformation":Lcom/squareup/picasso/Transformation;
    goto :goto_1

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/squareup/picasso/Request;->stableKey:Ljava/lang/String;

    const/16 v3, 0x29

    if-eqz v1, :cond_2

    .line 125
    const-string v1, " stableKey("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/picasso/Request;->stableKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    :cond_2
    iget v1, p0, Lcom/squareup/picasso/Request;->targetWidth:I

    const/16 v4, 0x2c

    if-lez v1, :cond_3

    .line 128
    const-string v1, " resize("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/squareup/picasso/Request;->targetWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/squareup/picasso/Request;->targetHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    :cond_3
    iget-boolean v1, p0, Lcom/squareup/picasso/Request;->centerCrop:Z

    if-eqz v1, :cond_4

    .line 131
    const-string v1, " centerCrop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_4
    iget-boolean v1, p0, Lcom/squareup/picasso/Request;->centerInside:Z

    if-eqz v1, :cond_5

    .line 134
    const-string v1, " centerInside"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_5
    iget v1, p0, Lcom/squareup/picasso/Request;->rotationDegrees:F

    const/4 v5, 0x0

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_7

    .line 137
    const-string v1, " rotation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/squareup/picasso/Request;->rotationDegrees:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 138
    iget-boolean v1, p0, Lcom/squareup/picasso/Request;->hasRotationPivot:Z

    if-eqz v1, :cond_6

    .line 139
    const-string v1, " @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/squareup/picasso/Request;->rotationPivotX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/squareup/picasso/Request;->rotationPivotY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 141
    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    :cond_7
    iget-object v1, p0, Lcom/squareup/picasso/Request;->config:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_8

    .line 144
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/picasso/Request;->config:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    :cond_8
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
