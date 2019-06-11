var gulp = require('gulp'),
    cleanCSS = require('gulp-clean-css'),
    concat = require('gulp-concat'),
    injectfile = require('gulp-inject-file');

gulp.task('css-concat-min', function() {
    gulp.src('./stylesheets/*.css')
        .pipe(concat('merged-min.css'))
        .pipe(cleanCSS({compatibility: 'ie8'}))
        .pipe(gulp.dest('./dist/'));
});

gulp.task('css-inject', function() {
    gulp.src('./amp/*.html')
        .pipe(injectfile({
            pattern: '<!--\\s*inject:\\s*<filename>-->'
        }))
        .pipe(gulp.dest('./'));
});

gulp.task('default', function(done) {
    gulp.task('start', gulp.series('css-concat-min', 'css-inject'));
    done();
});
