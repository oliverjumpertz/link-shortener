use axum::http::StatusCode;
use metrics::increment_counter;

pub fn internal_error<E>(err: E) -> (StatusCode, String)
where
    E: std::error::Error,
{
    tracing::error!("{}", err);

    let labels = [("error", format!("{}!", err))];

    increment_counter!("request_error", &labels);

    (StatusCode::INTERNAL_SERVER_ERROR, err.to_string())
}
