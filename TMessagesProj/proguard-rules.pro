-keep public class com.google.android.gms.* { public *; }
-keepnames @com.google.android.gms.common.annotation.KeepName class *
-keepclassmembernames class * {
    @com.google.android.gms.common.annotation.KeepName *;
}
-keep class org.webrtc.* { *; }
-keep class org.webrtc.audio.* { *; }
-keep class org.webrtc.voiceengine.* { *; }
-keep class org.telegram.messenger.* { *; }
-keep class org.telegram.messenger.camera.* { *; }
-keep class org.telegram.messenger.secretmedia.* { *; }
-keep class org.telegram.messenger.support.* { *; }
-keep class org.telegram.messenger.support.* { *; }
-keep class org.telegram.messenger.time.* { *; }
-keep class org.telegram.messenger.video.* { *; }
-keep class org.telegram.messenger.voip.* { *; }
-keep class org.telegram.SQLite.** { *; }
-keep class org.telegram.tgnet.ConnectionsManager { *; }
-keep class org.telegram.tgnet.NativeByteBuffer { *; }
-keep class org.telegram.tgnet.RequestDelegateInternal { *; }
-keep class org.telegram.tgnet.RequestTimeDelegate { *; }
-keep class org.telegram.tgnet.RequestDelegate { *; }
-keep class org.telegram.tgnet.QuickAckDelegate { *; }
-keep class org.telegram.tgnet.WriteToSocketDelegate { *; }
-keep class com.google.android.exoplayer2.ext.** { *; }
-keep class com.google.android.exoplayer2.util.FlacStreamMetadata { *; }
-keep class com.google.android.exoplayer2.metadata.flac.PictureFrame { *; }
-keep class com.google.android.exoplayer2.decoder.SimpleOutputBuffer { *; }

-keepnames class org.telegram.tgnet.TLRPC$TL_* {}

-dontwarn org.dizitart.no2.**  
-dontwarn org.slf4j.** 
-dontwarn org.h2.** 
-dontwarn org.objenesis.** 
-dontwarn com.fasterxml.jackson.** 
-dontwarn com.alibaba.fastjson.**
-dontwarn org.springframework.** 
-dontwarn org.thymeleaf.** 
-dontwarn org.tinylog.** 
-dontwarn org.wltea.** 
-dontwarn org.yaml.** 
-dontwarn oshi.** 
-dontwarn redis.clients.** 
-dontwarn retrofit2.** 
-dontwarn springfox.documentation.spring.web.json.Json

-dontwarn ch.ethz.** 
-dontwarn cn.beecp.** 
-dontwarn com.alibaba.** 
-dontwarn com.chenlb.** 
-dontwarn com.github.houbb.** 
-dontwarn com.github.promeg.** 
-dontwarn com.github.stuxuhai.** 
-dontwarn com.google.common.** 
-dontwarn com.google.zxing.** 
-dontwarn com.googlecode.** 
-dontwarn com.hankcs.** 
-dontwarn com.jcraft.** 
-dontwarn com.jfinal.** 
-dontwarn com.jfirer.** 
-dontwarn com.mayabot.** 
-dontwarn com.mchange.** 
-dontwarn com.mongodb.** 
-dontwarn com.rnkrsoft.** 
-dontwarn com.rnkrsoft.bopomofo4j.ToneType
-dontwarn com.sun.net.** 
-dontwarn com.vdurmont.** 
-dontwarn com.zaxxer.** 
-dontwarn freemarker.** 
-dontwarn io.github.logtube.** 
-dontwarn java.awt.** 
-dontwarn java.beans.** 
-dontwarn java.lang.management.ClassLoadingMXBean
-dontwarn javax.** 
-dontwarn net.sf.** 
-dontwarn net.sourceforge.** 
-dontwarn okhttp3.** 
-dontwarn org.ansj.** 
-dontwarn org.apache.** 
-dontwarn org.apdplat.** 
-dontwarn org.beetl.** 
-dontwarn org.bouncycastle.** 
-dontwarn org.febit.** 
-dontwarn org.glassfish.** 
-dontwarn org.javamoney.** 
-dontwarn org.jboss.** 
-dontwarn org.jboss.** 
-dontwarn org.joda.** 
-dontwarn org.lionsoul.** 
-dontwarn org.mozilla.** 
-dontwarn org.mvel2.** 
-dontwarn org.ofdrw.** 
-dontwarn org.openxmlformats.** 
-dontwarn org.pmw.tinylog.** 
-dontwarn org.rythmengine.** 
-dontwarn org.slf4j.** 

# https://developers.google.com/ml-kit/known-issues#android_issues
-keep class com.google.mlkit.nl.languageid.internal.LanguageIdentificationJni { *; }

# Constant folding for resource integers may mean that a resource passed to this method appears to be unused. Keep the method to prevent this from happening.
-keep class com.google.android.exoplayer2.upstream.RawResourceDataSource {
  public static android.net.Uri buildRawResourceUri(int);
}

# Methods accessed via reflection in DefaultExtractorsFactory
-dontnote com.google.android.exoplayer2.ext.flac.FlacLibrary
-keepclassmembers class com.google.android.exoplayer2.ext.flac.FlacLibrary {

}

# Some members of this class are being accessed from native methods. Keep them unobfuscated.
-keep class com.google.android.exoplayer2.video.VideoDecoderOutputBuffer {
  *;
}

-dontnote com.google.android.exoplayer2.ext.opus.LibopusAudioRenderer
-keepclassmembers class com.google.android.exoplayer2.ext.opus.LibopusAudioRenderer {
  <init>(android.os.Handler, com.google.android.exoplayer2.audio.AudioRendererEventListener, com.google.android.exoplayer2.audio.AudioProcessor[]);
}
-dontnote com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer
-keepclassmembers class com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer {
  <init>(android.os.Handler, com.google.android.exoplayer2.audio.AudioRendererEventListener, com.google.android.exoplayer2.audio.AudioProcessor[]);
}
-dontnote com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer
-keepclassmembers class com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer {
  <init>(android.os.Handler, com.google.android.exoplayer2.audio.AudioRendererEventListener, com.google.android.exoplayer2.audio.AudioProcessor[]);
}

# Constructors accessed via reflection in DefaultExtractorsFactory
-dontnote com.google.android.exoplayer2.ext.flac.FlacExtractor
-keepclassmembers class com.google.android.exoplayer2.ext.flac.FlacExtractor {
  <init>();
}

# Constructors accessed via reflection in DefaultDownloaderFactory
-dontnote com.google.android.exoplayer2.source.dash.offline.DashDownloader
-keepclassmembers class com.google.android.exoplayer2.source.dash.offline.DashDownloader {
  <init>(android.net.Uri, java.util.List, com.google.android.exoplayer2.offline.DownloaderConstructorHelper);
}
-dontnote com.google.android.exoplayer2.source.hls.offline.HlsDownloader
-keepclassmembers class com.google.android.exoplayer2.source.hls.offline.HlsDownloader {
  <init>(android.net.Uri, java.util.List, com.google.android.exoplayer2.offline.DownloaderConstructorHelper);
}
-dontnote com.google.android.exoplayer2.source.smoothstreaming.offline.SsDownloader
-keepclassmembers class com.google.android.exoplayer2.source.smoothstreaming.offline.SsDownloader {
  <init>(android.net.Uri, java.util.List, com.google.android.exoplayer2.offline.DownloaderConstructorHelper);
}

# Constructors accessed via reflection in DownloadHelper
-dontnote com.google.android.exoplayer2.source.dash.DashMediaSource$Factory
-keepclasseswithmembers class com.google.android.exoplayer2.source.dash.DashMediaSource$Factory {
  <init>(com.google.android.exoplayer2.upstream.DataSource$Factory);
}
-dontnote com.google.android.exoplayer2.source.hls.HlsMediaSource$Factory
-keepclasseswithmembers class com.google.android.exoplayer2.source.hls.HlsMediaSource$Factory {
  <init>(com.google.android.exoplayer2.upstream.DataSource$Factory);
}
-dontnote com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource$Factory
-keepclasseswithmembers class com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource$Factory {
  <init>(com.google.android.exoplayer2.upstream.DataSource$Factory);
}

# Don't warn about checkerframework and Kotlin annotations
-dontwarn org.checkerframework.**
-dontwarn javax.annotation.**

# Use -keep to explicitly keep any other classes shrinking would remove
-dontoptimize
-dontobfuscate
