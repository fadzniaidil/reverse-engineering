.class Lcom/google/firebase/messaging/FirelogAnalyticsEvent$FirelogAnalyticsEventEncoder;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@21.0.1"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/FirelogAnalyticsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FirelogAnalyticsEventEncoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/encoders/ObjectEncoder<",
        "Lcom/google/firebase/messaging/FirelogAnalyticsEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Lcom/google/firebase/messaging/FirelogAnalyticsEvent;Lcom/google/firebase/encoders/ObjectEncoderContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/encoders/EncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/messaging/FirelogAnalyticsEvent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/firebase/messaging/MessagingAnalytics;->getTtl(Landroid/content/Intent;)I

    move-result v1

    const-string v2, "ttl"

    invoke-interface {p2, v2, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Ljava/lang/String;I)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/messaging/FirelogAnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "event"

    invoke-interface {p2, v1, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 4
    invoke-static {}, Lcom/google/firebase/messaging/MessagingAnalytics;->getInstanceId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "instanceId"

    invoke-interface {p2, v1, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 5
    invoke-static {v0}, Lcom/google/firebase/messaging/MessagingAnalytics;->getPriority(Landroid/content/Intent;)I

    move-result p1

    const-string v1, "priority"

    invoke-interface {p2, v1, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Ljava/lang/String;I)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 6
    invoke-static {}, Lcom/google/firebase/messaging/MessagingAnalytics;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "packageName"

    invoke-interface {p2, v1, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 7
    const-string p1, "sdkPlatform"

    const-string v1, "ANDROID"

    invoke-interface {p2, p1, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 8
    invoke-static {v0}, Lcom/google/firebase/messaging/MessagingAnalytics;->getMessageTypeForFirelog(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    .line 9
    const-string v1, "messageType"

    invoke-interface {p2, v1, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 10
    invoke-static {v0}, Lcom/google/firebase/messaging/MessagingAnalytics;->getMessageId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 11
    const-string v1, "messageId"

    invoke-interface {p2, v1, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 12
    :cond_0
    invoke-static {v0}, Lcom/google/firebase/messaging/MessagingAnalytics;->getTopic(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 13
    const-string v1, "topic"

    invoke-interface {p2, v1, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 14
    :cond_1
    invoke-static {v0}, Lcom/google/firebase/messaging/MessagingAnalytics;->getCollapseKey(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 15
    const-string v1, "collapseKey"

    invoke-interface {p2, v1, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 16
    :cond_2
    invoke-static {v0}, Lcom/google/firebase/messaging/MessagingAnalytics;->getMessageLabel(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 17
    invoke-static {v0}, Lcom/google/firebase/messaging/MessagingAnalytics;->getMessageLabel(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    .line 18
    const-string v1, "analyticsLabel"

    invoke-interface {p2, v1, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 19
    :cond_3
    invoke-static {v0}, Lcom/google/firebase/messaging/MessagingAnalytics;->getComposerLabel(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 20
    invoke-static {v0}, Lcom/google/firebase/messaging/MessagingAnalytics;->getComposerLabel(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    .line 21
    const-string v0, "composerLabel"

    invoke-interface {p2, v0, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 22
    :cond_4
    invoke-static {}, Lcom/google/firebase/messaging/MessagingAnalytics;->getProjectNumber()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 23
    const-string v0, "projectNumber"

    invoke-interface {p2, v0, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    :cond_5
    return-void
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/google/firebase/messaging/FirelogAnalyticsEvent;

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/messaging/FirelogAnalyticsEvent$FirelogAnalyticsEventEncoder;->encode(Lcom/google/firebase/messaging/FirelogAnalyticsEvent;Lcom/google/firebase/encoders/ObjectEncoderContext;)V

    return-void
.end method
