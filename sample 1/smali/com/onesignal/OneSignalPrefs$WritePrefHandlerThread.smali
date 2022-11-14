.class public Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;
.super Landroid/os/HandlerThread;
.source "OneSignalPrefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignalPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WritePrefHandlerThread"
.end annotation


# static fields
.field private static final WRITE_CALL_DELAY_TO_BUFFER_MS:I = 0xc8


# instance fields
.field private lastSyncTime:J

.field private mHandler:Landroid/os/Handler;

.field private threadStartCalled:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 125
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 122
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->lastSyncTime:J

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;

    .line 118
    invoke-direct {p0}, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->flushBufferToDisk()V

    return-void
.end method

.method static synthetic access$100(Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;

    .line 118
    invoke-direct {p0}, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->startDelayedWrite()V

    return-void
.end method

.method private flushBufferToDisk()V
    .locals 10

    .line 179
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->prefsToApply:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 180
    .local v1, "pref":Ljava/lang/String;
    invoke-static {v1}, Lcom/onesignal/OneSignalPrefs;->getSharedPrefsByName(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 181
    .local v2, "prefsToWrite":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 182
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v4, Lcom/onesignal/OneSignalPrefs;->prefsToApply:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 183
    .local v4, "prefHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    monitor-enter v4

    .line 184
    :try_start_0
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 185
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 186
    .local v7, "value":Ljava/lang/Object;
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 187
    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 188
    :cond_0
    instance-of v8, v7, Ljava/lang/Boolean;

    if-eqz v8, :cond_1

    .line 189
    move-object v8, v7

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 190
    :cond_1
    instance-of v8, v7, Ljava/lang/Integer;

    if-eqz v8, :cond_2

    .line 191
    move-object v8, v7

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 192
    :cond_2
    instance-of v8, v7, Ljava/lang/Long;

    if-eqz v8, :cond_3

    .line 193
    move-object v8, v7

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {v3, v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 194
    :cond_3
    instance-of v8, v7, Ljava/util/Set;

    if-eqz v8, :cond_4

    .line 195
    move-object v8, v7

    check-cast v8, Ljava/util/Set;

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 196
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_4
    :goto_2
    goto :goto_1

    .line 197
    :cond_5
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 198
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 200
    .end local v1    # "pref":Ljava/lang/String;
    .end local v2    # "prefsToWrite":Landroid/content/SharedPreferences;
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "prefHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 198
    .restart local v1    # "pref":Ljava/lang/String;
    .restart local v2    # "prefsToWrite":Landroid/content/SharedPreferences;
    .restart local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v4    # "prefHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 202
    .end local v1    # "pref":Ljava/lang/String;
    .end local v2    # "prefsToWrite":Landroid/content/SharedPreferences;
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "prefHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->lastSyncTime:J

    .line 203
    return-void
.end method

.method private declared-synchronized scheduleFlushToDisk()V
    .locals 5

    monitor-enter p0

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 161
    monitor-exit p0

    return-void

    .line 163
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 165
    iget-wide v0, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->lastSyncTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->lastSyncTime:J

    .line 167
    .end local p0    # "this":Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;
    :cond_1
    iget-wide v0, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->lastSyncTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    add-long/2addr v0, v2

    .line 169
    .local v0, "delay":J
    new-instance v2, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread$1;

    invoke-direct {v2, p0}, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread$1;-><init>(Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;)V

    .line 175
    .local v2, "runnable":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 159
    .end local v0    # "delay":J
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized startDelayedWrite()V
    .locals 1

    monitor-enter p0

    .line 142
    :try_start_0
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 143
    monitor-exit p0

    return-void

    .line 145
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->startThread()V

    .line 146
    invoke-direct {p0}, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->scheduleFlushToDisk()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    .line 141
    .end local p0    # "this":Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startThread()V
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->threadStartCalled:Z

    if-eqz v0, :cond_0

    .line 152
    return-void

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->start()V

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->threadStartCalled:Z

    .line 156
    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 2

    .line 130
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 133
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->mHandler:Landroid/os/Handler;

    .line 136
    invoke-direct {p0}, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->scheduleFlushToDisk()V

    .line 137
    return-void
.end method
